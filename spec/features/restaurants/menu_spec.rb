require 'rails_helper'

RSpec.Describe "Restaurant's menu page" do
  it "displays every plate associated with the restaurant, as well as each plate's attributes" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    chicken_wings = sybergs.plates.create!(name: "Syberg's Famous Wings", price: 10.99, serves: 1, vegetarian: false, category: "entree")
    salad = sybergs.plates.create!(name: "Dinner Salad", price: 4.99, serves: 1, vegetarian: true, category: "side")

    visit "/restaurants/#{sybergs.id}/menu"

    expect(page).to have_content()

  end
end


As a visitor
When I visit '/parents/:parent_id/child_table_name'
Then I see each Child that is associated with that Parent with each Child's attributes
(data from each column that is on the child table)