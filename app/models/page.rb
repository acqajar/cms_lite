class Page < ActiveRecord::Base
  belongs_to :template
  belongs_to :user

  
end
