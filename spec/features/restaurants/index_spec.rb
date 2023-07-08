require 'rails_helper'

RSpec.describe "restaurants index page", type: :feature do
  it "displays the name of each restaurant in system" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    bakery_and_pickle = Restaurant.create!(name: "Bakery and Pickle", location: "Bloomington, IL", rating: 4.6, reviews: 126, breakfast: false)
    
    visit "/restaurants"
    
    expect(page).to have_content(sybergs.name)
    expect(page).to have_content(bakery_and_pickle.name)
  end
  
  it "won't display restaurant names NOT in the system" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)


    visit "/restaurants"
    
    expect(page).to have_content(sybergs.name)
    expect(page).to_not have_content("Taco Bell")
  end

end


# [X] done

# User Story 1, Parent Index

# For each parent table
# As a visitor
# When I visit '/restaurants'
# Then I see the name of each restaurant record in the system