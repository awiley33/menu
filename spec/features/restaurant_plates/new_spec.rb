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

    expect(current_path).to eq("/restaurant/#{@sybergs.id}/plates")
    expect(page).to have_content("Dinner Salad")

  end
end


# [ ] done

# User Story 13, Parent Child Creation 

# As a visitor
# When I visit a Parent Children Index page
# Then I see a link to add a new adoptable child for that parent "Create Child"
# When I click the link
# I am taken to '/parents/:parent_id/child_table_name/new' where I see a form to add a new adoptable child
# When I fill in the form with the child's attributes:
# And I click the button "Create Child"
# Then a `POST` request is sent to '/parents/:parent_id/child_table_name',
# a new child object/row is created for that parent,
# and I am redirected to the Parent Childs Index page where I can see the new child listed