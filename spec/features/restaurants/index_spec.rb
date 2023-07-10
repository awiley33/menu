require 'rails_helper'

RSpec.describe "restaurants index page", type: :feature do
  it "displays the name of each restaurant in system" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    bakery_and_pickle = Restaurant.create!(name: "Bakery and Pickle", location: "Bloomington, IL", rating: 4.6, reviews: 126, breakfast: false)
    
    visit "/restaurants"
    
    expect(page).to have_content(sybergs.name)
    expect(page).to have_content(bakery_and_pickle.name)

    expect(page).to_not have_content("Taco Bell")
  end

  it "orders the Restaurants by most recently created" do

  end

  it "displays the datetime in which the Restaurant was created" do

  end


end


# [ ] done

# User Story 6, Parent Index sorted by Most Recently Created 

# As a visitor
# When I visit the parent index,
# I see that records are ordered by most recently created first
# And next to each of the records I see when it was created