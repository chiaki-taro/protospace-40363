Rails.application.routes.draw do
  devise_for :users
  root "prototypes#index"
  # get 'prototypes/index'
  resources :users, only: :show
  resources :prototypes, only: [:index, :create, :new, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
