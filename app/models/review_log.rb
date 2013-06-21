class ReviewLog < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :review
  validates_presence_of :user_id
  validates_presence_of :review_id

  belongs_to :user
  belongs_to :review

end
