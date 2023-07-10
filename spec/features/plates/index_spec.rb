require "rails_helper"

RSpec.describe "plates index page" do
  it "displays the name of each plate in the system" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    chicken_wings = sybergs.plates.create!(name: "Syberg's Famous Wings", price: 10.99, serves: 1, vegetarian: false, category: "entree")
    salad = sybergs.plates.create!(name: "Dinner Salad", price: 4.99, serves: 1, vegetarian: true, category: "side")

    visit "/plates"

    expect(page).to have_content(chicken_wings.name)
    expect(page).to have_content(salad.name)
    expect(page).to_not have_content("taco")
  end

  it "has a link for both the restaurant and plate indices at the top of the page" do
    visit "/plates"

    expect(page).to have_link("Restaurants", :href => "/restaurants")
    expect(page).to have_link("Plates", :href => "/plates")
  end
end