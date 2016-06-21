class Post < ActiveRecord::Base
  belongs_to :user
  has_many :periods, through :periodposts
end
