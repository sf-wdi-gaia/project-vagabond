class User < ActiveRecord::Base
	validates :email, uniqueness: true
	validates :email, confirmation: true
	validates :password, confirmation: true

	has_secure_password

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end

	has_many :posts
	has_many :periods

end
