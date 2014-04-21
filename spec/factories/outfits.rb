# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :outfit do
    image File.open(File.join(Rails.root, '/spec/support/outfit.jpg'))
    description 'this is a great description'
    user
  end
end
