Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"


get "/restaurants", to: "restaurants#index"
get "restaurants/new", to:"restaurants#new"
get "/restaurants/:id", to: "restaurants#show"
patch "/restaurants/:id", to: "restaurants#update"
get "/restaurants/:id/plates", to: "restaurants/plates#index"
get "/restaurants/:id/edit", to: "restaurants#edit"
get "/plates", to: "plates#index"
get "/plates/:id", to: "plates#show"
post "/restaurants", to: "restaurants#create"
get "restaurants/:id/plates/new", to: "restaurants/plates#new"
post "restaurants/:id/plates", to: "restaurants/plates#create"

end
