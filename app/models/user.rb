class User < ApplicationRecord
  has_secure_password
  validates :password, :presence => { :on => :create }
has_many :posts
has_many :books



end
