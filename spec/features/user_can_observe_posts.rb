require 'spec_helper'

feature "visit other user's posts", %Q{
  As a user
  I want to be able to click on other user's posts,
  So I can see their images, brands, and upvote their posts
  } do

=begin

User should be able to click on other user's posts to view their content
User should be able to view a list of brands associated with the post
User should be able to comment on another user's posts
User should be able to view brands associated with a post
User should be able to upvote a post

=end

  scenario "user should be able to see another user's posts" do
    not_the_maker = FactoryGirl.create(:user)
    user = FactoryGirl.create(:user)
    sign_in_as(user)
    visit new_outfit_path
    outfit = FactoryGirl.create(:outfit, user: user)
    click_on "Logout"

    sign_in_as(not_the_maker)
    visit outfit_path(outfit)
    expect(page).to_not have_content("Delete")
  end

end

