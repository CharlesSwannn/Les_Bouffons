Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"


  resources :offers, only: [:index, :new, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "profile", to: "pages#profile"
  # Defines the root path route ("/")
  # root "articles#index"
end
