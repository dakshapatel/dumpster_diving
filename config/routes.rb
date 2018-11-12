Rails.application.routes.draw do

  root "home#home"

  get "/signin", to: "sessions#new", as: 'signin'
  post "/signin", to: "sessions#create"
  delete "/logout", to:"sessions#destroy"
  
  get "/signup", to: "users#new", as:'signup'
 
  resources :goods
  resources :dumpsters, only: [:index, :new, :create]
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
