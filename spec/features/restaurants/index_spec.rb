require 'rails_helper'

RSpec.describe "restaurants index page", type: :feature do
  before :each do
    @sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    @bakery_and_pickle = Restaurant.create!(name: "Bakery and Pickle", location: "Bloomington, IL", rating: 4.6, reviews: 126, breakfast: false)
  end

  it "displays the name of each restaurant in system" do
    visit "/restaurants"
    
    expect(page).to have_content(@sybergs.name)
    expect(page).to have_content(@bakery_and_pickle.name)
    
    expect(page).to_not have_content("Taco Bell")
  end
  
  it "orders the Restaurants by most recently created" do
    visit "/restaurants"

    expect(@bakery_and_pickle.name).to appear_before(@sybergs.name)
  end
  
  it "displays the datetime in which the Restaurant was created" do
    visit "/restaurants"

    expect(page).to have_content(@sybergs.created_at)
    expect(page).to have_content(@bakery_and_pickle.created_at)
  end

  it "has a link for both the restaurant and plate indices at the top of the page" do
    visit "/restaurants"

    expect(page).to have_link("Restaurants", :href => "/restaurants")
    expect(page).to have_link("Plates", :href => "/plates")
  end

  it "has a link to create a new Restaurant" do

  end

end

# [ ] done

# User Story 11, Parent Creation 

# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I  see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.