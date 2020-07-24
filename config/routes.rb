Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users, controllers: {   registrations: 'users/registrations',
    sessions: 'users/sessions' }
  root to: "training_menus#index"
  resources :training_menus, :only => [:new, :create] do
    collection do
      get "easy_menu"
      get "normal_menu"
      get "hard_menu"
    end
  end
  resources :trains
  resources :users, :only => [:index, :show]
end
