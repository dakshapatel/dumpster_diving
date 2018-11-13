Rails.application.routes.draw do

  root "home#home"

  get "/signin", to: "sessions#new", as: 'signin'
  post "/signin", to: "sessions#create"
  get "/signup", to: "users#new", as:'signup'

  resources :dumpsters
  resources :goods
  
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
