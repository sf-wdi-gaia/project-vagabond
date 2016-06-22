class Period < ActiveRecord::Base
	belongs_to :user
	has_many :period_posts
	has_many :posts, through: :period_posts
end

