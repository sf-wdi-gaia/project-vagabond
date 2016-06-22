class Period < ActiveRecord::Base
	belongs_to :user
	has_many :posts, through: :periodposts
end

