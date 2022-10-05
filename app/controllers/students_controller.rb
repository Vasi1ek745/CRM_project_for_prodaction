class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new student_params     
      if @student.save
        flash[:success] = "Новый ученик добавлен"
        redirect_to students_path
      else
        render :new
      end
  end

  def edit
    @student = Student.find params[:id]
  end

  def update
     @student = Student.find params[:id]
    if @student.update student_params
      flash[:success] = "Данные изменены"
      redirect_to students_path
    else
      render :edit
    end
  end

  def destroy
    @student = Student.find params[:id]
    if @student.destroy
      flash[:success] = "Ученик удален"
      redirect_to students_path , status: 303
    else
      render :edit
    end
  end

  private
    def student_params
      params.require(:student).permit(:name, :subject, :location, :pay_by_hour, :other, :class_in_school, :phone_number) 
    end
end
