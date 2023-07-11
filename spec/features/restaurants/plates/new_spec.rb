require 'rails_helper'

RSpec.describe "plate creation" do
  before :each do
    @sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
  end

  it "links to the new page from the parent child index page" do
    visit "/restaurants/#{@sybergs.id}/plates"

    click_link("Create Plate")

    expect(current_path).to eq("/restaurants/#{@sybergs.id}/plates/new")
  end

  it "can create a new plate" do
    visit "/restaurants/#{@sybergs.id}/plates/new"
    fill_in("name", with: "Dinner Salad")
    fill_in("price", with: 4.99)
    fill_in("serves", with: 1)
    fill_in("vegetarian", with: true)
    fill_in("category", with: "side")
    click_button("Create Plate")

    expect(current_path).to eq("/restaurants/#{@sybergs.id}/plates")
    expect(page).to have_content("Dinner Salad")

  end
end