Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  root to: "training_menus#index"
  resources :trains
  resources :users, :only => [:index, :show]
end
