require "rails_helper"

RSpec.describe "plates index page" do
  it "displays the name of each plate in the system" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    chicken_wings = Plate.create!(name: "Syberg's Famous Wings", price: 10.99, serves: 1, vegetarian: false, category: "entree")

  end
end



# [ ] done

# User Story 3, Child Index 

# As a visitor
# When I visit '/child_table_name'
# Then I see each Child in the system including the Child's attributes
# (data from each column that is on the child table)