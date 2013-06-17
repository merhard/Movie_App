require 'spec_helper'

describe 'movie reviews' do
  let(:review) { FactoryGirl.create(:review) }
  let(:movie) { review.movie }

  it 'displays an added review' do
    visit movie_reviews_path(movie)
    expect(page).to have_content(review.description)
  end

  it 'displays reviews on movie page' do
    visit movie_path(movie)
    expect(page).to have_content(review.description)
  end
end
