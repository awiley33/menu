require "rails_helper"

RSpec.describe "restaurant creation" do
  it "links to the new page from the restaurants index" do
    visit "/restaurants"

    click_link("New Restaurant")
    expect(current_path).to eq('/restaurants/new')
  end
end