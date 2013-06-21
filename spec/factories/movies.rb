# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :movie do
    sequence(:title){|n| "movie#{n}" }
    synopsis "MyText"

    factory :movie_with_reviews do
      ignore do
        rev_count 1
      end

      after(:create) do |movie,evaluator|
        FactoryGirl.create_list(:review, evaluator.rev_count, movie: movie)
      end
    end
  end
end
