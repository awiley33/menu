Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"


get "/restaurants", to: "restaurants#index"
get "/restaurants/:id", to: "restaurants#show"
get "/plates", to: "plates#index"
get "/plates/:id", to: "plates#show"
get "/restaurants/:restaurant_id/plates", to: "plates#assoc"

end
