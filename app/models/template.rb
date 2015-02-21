class Template < ActiveRecord::Base
  has_many :users
  has_many :texts
  has_many :images
  has_many :pages
  # validates :login
end
