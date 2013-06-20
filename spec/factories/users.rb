# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do

  factory :user do
    sequence(:email) {|n| "m#{n}@m.com"}
    password 'password'
  end
end
