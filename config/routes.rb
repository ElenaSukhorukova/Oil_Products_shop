Rails.application.routes.draw do
  get 'user/new'
  get 'home/index'
  root 'home#index'

  # resources
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
