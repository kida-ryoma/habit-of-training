Rails.application.routes.draw do
  devise_for :users
  root to: "training_menus#index"
  resources :trains
end
