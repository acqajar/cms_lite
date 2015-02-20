class Template < ActiveRecord::Base
  belongs_to :user
  has_many :texts
  has_many :images
  # validates :login
end
