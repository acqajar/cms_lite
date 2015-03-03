class Image < ActiveRecord::Base
	belongs_to :template
	validates :login

end
