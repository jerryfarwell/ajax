Rails.application.routes.draw do


  root "emails#index"
  resources :emails
  resources :books, only: [:create, :index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
