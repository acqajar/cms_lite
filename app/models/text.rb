class Text < ActiveRecord::Base
	belongs_to :template
  	validates :login

end
