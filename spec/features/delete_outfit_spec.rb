require 'spec_helper'

feature 'delete an outfit', %Q{
  As a user
  I want to be able to edit my outfit
  So that other users can no longer view and interact with my post
  } do

    scenario 'user deletes an outfit post' do
      user = FactoryGirl.create(:user)
      outfit = FactoryGirl.create(:outfit, user: user)
      visit outfit_path(outfit)
      click_on "Delete Outfit"
      expect(page).to have_content("Outfit deleted")
      expect(page).to_not have_content(outfit)
    end
end

