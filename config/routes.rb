Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "items#index"

  resources :users do
    resources :favorites
    resources :lists 
  end 

  resources :items do
    resources :reviews
  end

  resources :genres

  post "/sessions" => "sessions#create"


end
