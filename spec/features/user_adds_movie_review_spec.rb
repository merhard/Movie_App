require 'spec_helper'

describe 'movie reviews' do
  let(:movie) {FactoryGirl.create(:movie) }

  it "user can add a review" do
    visit movie_path(movie)
    expect(page).to have_content('Add Review')


  end

  it "takes user to add review form" do
    visit movie_path(movie)

    click_on('Add Review')

    expect(page).to have_content('Description')


  end

  it "should create the review" do

    visit new_movie_review_path(movie)
    fill_in 'Description',with: "This is a description"
    fill_in 'Score', with: '2'

    click_on 'Add Review'
    expect(page).to have_content("New Review Added!")

  end

end
