# require 'spec_helper'

# feature 'user adds tags', %Q{
#   As a user,
#   I want to be able to tag my picture with brands
#   In order to be able to include it in searches for the brand
# } do

#   scenario 'a user adds tags to an outfit' do
#     user = FactoryGirl.create(:user)
#     sign_in_as(user)
#     outfit = FactoryGirl.create(:outfit, user: user)
#     visit outfit_path(outfit)
#     fill_in 'Tags' with 'Awesome'
#     fill_in 'Tags' with 'Very Cool'
#   end
# end
