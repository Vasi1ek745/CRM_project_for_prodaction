Rails.application.routes.draw do

  root "main_page#index"

  resources :students


end
