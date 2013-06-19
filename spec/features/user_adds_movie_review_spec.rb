require 'spec_helper'

describe 'user adds a movie review' do
  %q{
    As a logged in user
    I want to add a review of a movie
    So that other users can see decide if they want to see it
  }

  # ACCEPTANCE CRITERIA
  # -A form that user can fill out.
  # -A description and a score are both required.

  let(:movie) {FactoryGirl.create(:movie) }

  it "should create the review" do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit movie_path(movie)
    click_on('Add Review')
    fill_in 'Description',with: "This is a description"
    fill_in 'Score', with: '2'
    click_on 'Add Review'
    expect(page).to have_content("New Review Added!")
  end

end
