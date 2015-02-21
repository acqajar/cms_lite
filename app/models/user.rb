require "bcrypt"
class User < ActiveRecord::Base
	has_secure_password
	belongs_to :template
	# validates_presence_of uniqueness: true, presence: true, :password, :email
	# validates :password, length: {in: 6..25}, :login

end
