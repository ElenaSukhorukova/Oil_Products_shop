Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  resource :users, only: [:new, :create]

  get "/signup", to: "users#new", as: "signup"
  post "/signup", to: "users#create"
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
