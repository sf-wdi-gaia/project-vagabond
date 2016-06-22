class User < ActiveRecord::Base
	validates :email, uniqueness: true, confirmation: true

	
	has_secure_password

	

	def self.confirm(params)
		@user = User.find_by({email: params[:email]})
		@user.try(:authenticate, params[:password])
	end

	has_many :posts
	has_many :periods

end


# <%= f.password_field :password_confirmation, placeholder: "Confirm Password" %> 
# validates :password_confirmation, presence: true