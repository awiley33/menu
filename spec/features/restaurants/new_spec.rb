require "rails_helper"

RSpec.describe "restaurant creation" do
  it "links to the new page from the restaurants index" do
    visit "/restaurants"

    click_link("New Restaurant")
    expect(current_path).to eq('/restaurants/new')
  end

  it "can create a new restaurant" do
    visit "/restaurants/new"

    fill_in("name", with: "Syberg's")
    fill_in("location", with: "St. Louis, MO")
    fill_in("rating", with: "4.5")
    fill_in("reviews", with: "1765")
    fill_in("breakfast", with: "false")
    click_button("Create Restaurant")

    new_restaurant_id = Restaurant.last.id
    expect(current_path).to eq("/restaurants/#{new_restaurant_id}")
    expect(page).to have_content("Syberg's")
  end
end

