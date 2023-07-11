require 'rails_helper'

RSpec.describe "restaurant edit" do
  it "links to the edit page from the restaurant show page" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)
    
    visit "/restaurants/#{sybergs.id}"
    
    click_link "Update #{sybergs.name}"
    
    expect(current_path).to eq("/restaurants/#{sybergs.id}/edit")
  end
  
  it "can edit the restaurant" do
    sybergs = Restaurant.create!(name: "Syberg's", location: "St. Louis, MO", rating: 4.5, reviews: 1765, breakfast: false)

    visit "/restaurants/#{sybergs.id}"
    expect(page).to have_content("Syberg's")

    click_link "Update Syberg's"

    fill_in "name", with: "Anna's Chicken Wings"
    click_button "Update Restaurant"

    expect(current_path).to eq("/restaurants/#{sybergs.id}")
    expect(page).to have_content("Anna's Chicken Wings")
  end
end