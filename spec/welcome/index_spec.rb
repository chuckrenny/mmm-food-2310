require 'rails_helper'

RSpec.describe 'Search Form', type: :feature do
  # As a user,
  # When I visit "/"
  # And I fill in the search form with "sweet potatoes" (Note: Use the existing search form on api, don't create one)
  # And I click "Search"
  # Then I should be on page "/foods"
  # And I should see a total number of items returned by the search. (Note: "sweet potatoes" should yield >30,000 results)
  # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
  # And for each of the foods I should see:
  # - The food's GTIN/UPC code
  # - The food's description
  # - The food's Brand Owner
  # - The food's ingredients

  it 'visits the root path and the search form redirects to foods path' do
    visit '/'

    fill_in :q, with: 'Cheese'
    click_on 'Search'

    exect(current_path).to eq(foods_path)
  end
end