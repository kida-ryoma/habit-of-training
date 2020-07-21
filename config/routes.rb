Rails.application.routes.draw do
  devise_for :users
  root "training_menus#index"
  resources :trains
end
