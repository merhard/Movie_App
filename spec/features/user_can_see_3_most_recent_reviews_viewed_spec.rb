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
    reviews = FactoryGirl.create_list(:review,4)
    sign_in_as(user)
    
    visit_some_review_pages(reviews)

    expect(user.most_recent_reviews.count).to eql(3)
  end

  def visit_some_review_pages(reviews)
    reviews.each do |rev|
      visit movie_review_path(rev[:movie_id],rev[:id])
    end 
    
  end
end
