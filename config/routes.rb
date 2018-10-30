Rails.application.routes.draw do

  root "home#home"
  get "/signin", to: "sessions#signin"
  get "/signup", to: "sessions#signup"
  resources :goods
  resources :dumpsters, only: [:index, :new, :create]
  resources :users
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
