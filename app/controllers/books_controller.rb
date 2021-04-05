class BooksController < ApplicationController

  
def index 
  @books = Book.all
end

def new 
  @book = Book.where(params[:id])
end

private

def post_params
  params.require(:book).permit(:title, :author, :publisher, :description,)
end

end
