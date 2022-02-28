Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root to: "static#home"
  resources :sessions, only: [ :create]
  resources :registrations, only: [ :create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"
  
  resources  :users do
    resources :themes
  end



end
