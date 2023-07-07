Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to: "welcome#index"

# [X] done

# User Story 1, Parent Index

# For each parent table
# As a visitor
# When I visit '/restaurants'
# Then I see the name of each restaurant record in the system
get "/restaurants", to: "restaurants#index"

# [ ] done

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

get "/restaurants/:id", to: "restaurants#show"

end
