# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    description "Movie Review Description"
    association :movie
    association :user
    score 1
  end
end
