require 'rails_helper'

RSpec.describe "Restaurant's plates index page" do
  it "displays every plate associated with the restaurant, as well as each plate's attributes" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    chicken_wings = sybergs.plates.create!(name: "Syberg's Famous Wings", price: 10.99, serves: 1, vegetarian: false, category: "entree")
    salad = sybergs.plates.create!(name: "Dinner Salad", price: 4.99, serves: 1, vegetarian: true, category: "side")

    visit "/restaurants/#{sybergs.id}/plates"

    expect(page).to have_content(chicken_wings.name)
    expect(page).to have_content(chicken_wings.price)
    expect(page).to have_content(chicken_wings.serves)
    expect(page).to have_content(chicken_wings.vegetarian)
    expect(page).to have_content(chicken_wings.category)
    expect(page).to have_content(salad.name)
    expect(page).to have_content(salad.price)
    expect(page).to have_content(salad.serves)
    expect(page).to have_content(salad.vegetarian)
    expect(page).to have_content(salad.category)

    expect(page).to_not have_content("taco")
  end
end