# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :review do
    description "Movie Review Description"
    association :movie
    # TODO: Change once devise is set up
    user_id 1
    score 1
  end
end
