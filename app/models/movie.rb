class Movie < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :synopsis

  has_many :votes, as: :votable #polymorphic, needs to be checked
  has_many :reviews

  attr_accessible :synopsis, :title



  def self.most_recent(amount)
    order('created_at DESC').limit(amount)
 
  end
end


