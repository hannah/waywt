require 'spec_helper'

feature 'upload an outfit image', %Q{
  As a user
  I want to be able to upload my outfit
  So that other users can view and interact with my post
} do

=begin

===Acceptance Criteria===
User can fill out information
User can add a picture
User can submit and save a post

=end

  scenario 'submit a new outfit' do
    user = FactoryGirl.create(:user)
    sign_in_as(user)

    visit new_outfit_path
    outfit = FactoryGirl.build(:outfit)
    fill_in 'Description', with: outfit.description
    attach_file 'outfit_image', File.join(Rails.root, outfit.image)
    click_on 'Submit Outfit'
    expect(page).to have_content('Outfit Submitted')
    expect(page).to have_content()
  end


end
