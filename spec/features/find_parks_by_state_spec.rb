require "rails_helper"

RSpec.describe "State Park Search Page" do
  it "When I visi the page the user submits a valid state search" do
    visit "/"

    select "Tennessee", from: :state
    click_on "Find Parks"
    save_and_open_page
    expect(current_path).to eq(parks_path) 
    expect(page).to have_content("Park Total: 15")
    expect(page).to have_content("Full Name: Andrew Johnson National Historic Site")
    expect(page).to have_content("Standard Operating Hours:")
    expect(page).to have_content("Description")

    expect(page).to have_content("Direction Info:")


    
  end
end
# As a user,
# When I select "Tennessee" from the form,
# (Note: use the existing form)
# And click on "Find Parks",
# I see the total of parks found,
# And for each park I see:
# - full name of the park
# - description
# - direction info
# - standard hours for operation