require 'rails_helper'

RSpec.describe "restaurants show page", type: :feature do
  it "displays the restaurant and its attributes" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    bakery_and_pickle = Restaurant.create!(name: "Bakery and Pickle", location: "Bloomington, IL", rating: 4.6, reviews: 126, breakfast: false)
    visit "/restaurants/#{sybergs.id}"

    expect(page).to have_content(sybergs.name)
    expect(page).to have_content(sybergs.location)
    expect(page).to have_content(sybergs.rating)
    expect(page).to have_content(sybergs.reviews)
    expect(page).to have_content(sybergs.breakfast)
    
    visit "/restaurants/#{bakery_and_pickle.id}"
    
    expect(page).to have_content(bakery_and_pickle.name)
    expect(page).to have_content(bakery_and_pickle.location)
    expect(page).to have_content(bakery_and_pickle.rating)
    expect(page).to have_content(bakery_and_pickle.reviews)
    expect(page).to have_content(bakery_and_pickle.breakfast)

    expect(page).to_not have_content("Taco Bell")
  end
end