class Post < ApplicationRecord
  validates :title, :body,  presence: true 
  belongs_to :book
  has_many :comments
  
end
