class Post < ActiveRecord::Base
  belongs_to :user
  has_many :period_posts
  has_many :periods, through: :period_posts
end
