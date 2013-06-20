require 'spec_helper'

feature "3 recent reviews that were read" do 

# As a logged in user
# I want to see a list of the 3 most recent reviews I looked at
# so that I can revisit previous reviews I have read. 

# Acceptance Criteria:
# - Previous movies a user looked at must be stored in order
# - The 3 most recent movies are listed
let!(:user) {FactoryGirl.create(:user)}

  it "shows 3 most recently read reviews for a logged in user" do
    reviews = FactoryGirl.create_list(:review,3)
    visit new_user_session_path
    fill_in "Email", with: 'm@m.com'
    fill_in "Password", with: 'password'
    click_button 'Sign in'  

    visit movie_reviews_path(reviews[0].movie)
    expect(page).to have_content("Movie Review Description")



  end



end
