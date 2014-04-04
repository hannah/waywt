require 'spec_helper'

feature 'create a new user', %Q{
  As a user
  I want to sign up for a website
  So that I can upload my own pictures
} do

#User should be able to fill out a form containing username, email, and gender
#User should be able to sign up if the email and username is unique

  scenario 'new user signs up' do
    visit new_user_url
    fill_in 'Username', with: 'user_name'
    fill_in 'Password', with: 'password'
    fill_in 'Email', with: 'email@email.email'

    click_on 'Sign Up'
    expect(page).to have_content('Welcome!')
    expect(page).to have_content('user_name')
  end
end
