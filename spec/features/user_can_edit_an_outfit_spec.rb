require 'spec_helper'
feature 'user can edit an outfit', %Q{
  As a user
  I want to be able to upload my outfit
  So that other users can view and interact with my post
  } do

  scenario 'user edits an outfit' do
    user = FactoryGirl.create(:user)
    outfit = FactoryGirl.create(:outfit, user: user)
    visit edit_outfit_path(outfit)
    fill_in "Description", with: "new outfit description"
    click_on "Update Outfit"
    expect(page).to have_content("new outfit description")
  end

end
