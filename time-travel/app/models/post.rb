class Post < ActiveRecord::Base
  validates :description, presence: true, length: { minimum: 1, maximum: 200}
  validates :title, presence: true, length: {maximum: 100}
  belongs_to :user
  has_many :periods, through: :periodposts
end
