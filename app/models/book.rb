class Book < ApplicationRecord
  has_many :posts
  belongs_to :users 
 
  
  def self.get_data

    responce = RestClient.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{ENV["NYT_API"]}")
    
    books = JSON.parse(responce)["results"]["books"]
    
    books.each do |book|
    self.create(title: book["title"], publisher: book["publisher"], author: book["author"], description: book["description"])
    
    end
  end

   
end
