Rails.application.routes.draw do
  devise_for :users
  root "training_menus#index"
  resources :training_menus, only: :new
end
