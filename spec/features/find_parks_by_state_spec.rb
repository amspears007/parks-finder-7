require "rails_helper"

RSpec.describe "State Park Search Page" do
  it "When I visi the page the user submits a valid state search" do
    visit "/"

    select "Tennessee", from: :state
    click_on "Find Parks"
    expect(current_path).to eq(parks_path) 
  end
end