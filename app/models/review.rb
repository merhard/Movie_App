class Review < ActiveRecord::Base
  validates_presence_of :description
  validates_presence_of :movie_id
  validates_presence_of :user_id
  validates_presence_of :score

  belongs_to :user
  belongs_to :movie

  attr_accessible :description, :movie_id, :score, :user_id
end
