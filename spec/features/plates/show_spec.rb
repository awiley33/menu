require "rails_helper"

RSpec.describe "plates show page" do
  before :each do
    @sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    @chicken_wings = @sybergs.plates.create!(name: "Syberg's Famous Wings", price: 10.99, serves: 1, vegetarian: false, category: "entree")
    @salad = @sybergs.plates.create!(name: "Dinner Salad", price: 4.99, serves: 1, vegetarian: true, category: "side")
  end

  it "displays the attributes of a specific plate" do
    visit "/plates/#{@chicken_wings.id}"

    expect(page).to have_content(@chicken_wings.name)
    expect(page).to_not have_content(@salad.name)
  end

  it "has a link for both the restaurant and plate indices at the top of the page" do

    visit "/plates/#{@salad.id}"

    expect(page).to have_link("Restaurants", :href => "/restaurants")
    expect(page).to have_link("Plates", :href => "/plates")
  end
end