Rails.application.routes.draw do
  resources :reviews
  resources :restaurants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
    resources :restaurants do
    resources :reviews, only: [:new, :create]
    end
  end
