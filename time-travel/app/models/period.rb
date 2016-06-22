class Period < ActiveRecord::Base
	validates :description, presence: true, length: { minimum: 1, maximum: 1000}
  	validates :name, presence: true, length: {maximum: 100}
	has_many :posts

	belongs_to :user
	has_many :posts, through: :periodposts
end

