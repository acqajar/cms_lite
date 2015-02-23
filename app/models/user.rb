require "bcrypt"
class User < ActiveRecord::Base
	has_secure_password
	belongs_to :template
	has_many :pages
	# validates_presence_of uniqueness: true, presence: true, :password, :email
	# validates :password, length: {in: 6..25}, :login
 has_attached_file :avatar, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
