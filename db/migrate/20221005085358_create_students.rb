class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :subject
      t.string :class_in_school
      t.string :location
      t.integer :pay_by_hour
      t.string :other
      t.string :phone_number
      t.string :parents_bio

      t.timestamps
    end
  end
end
