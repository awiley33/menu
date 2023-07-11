Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"


get "/restaurants", to: "restaurants#index"
get "restaurants/new", to:"restaurants#new"
get "/restaurants/:id", to: "restaurants#show"
get "/restaurants/:id/plates", to: "restaurant_plates#index"
get "/plates", to: "plates#index"
get "/plates/:id", to: "plates#show"
post "/restaurants", to: "restaurants#create"

end
