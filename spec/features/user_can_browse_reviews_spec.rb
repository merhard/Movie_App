require 'spec_helper'

describe 'movie reviews' do
  # let(:movie) { FactoryGirl.create(:movie) }
  let(:movie_with_reviews) { FactoryGirl.create(:movie_with_reviews) }

  it 'displays an added review' do
    visit movie_reviews_path(movie_with_reviews)
    expect(page).to have_content('Movie Review Description')
  end

  it 'displays reviews on movie page' do
    visit movie_path(movie_with_reviews)
    expect(page).to have_content('Movie Review Description')
  end
end
