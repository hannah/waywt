# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) {|n| "email#{n}@factory.com" }
    username "helloworld"
    password "foobar99"
  end
end
