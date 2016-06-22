class User < ActiveRecord::Base
	validates :email, uniqueness: true, presence: true, confirmation: true
	validates :email_confirmation, presence: true  

	has_secure_password
	validates :password_confirmation, presence: true

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end

	has_many :posts
	has_many :periods

end
