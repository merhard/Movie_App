class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body

  has_many :review_logs

  has_many :viewed_reviews,
    through: :review_logs,
    source: :review
   # foreign_key: "review_id"

  def most_recent_reviews(count=3)
    viewed_reviews.order('created_at DESC').limit(count)

  end
end
