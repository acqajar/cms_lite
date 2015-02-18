class Image < ActiveRecord::Base
	belongs_to :templates
	validates :login

end
