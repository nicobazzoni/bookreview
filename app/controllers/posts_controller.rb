require 'pry'
class PostsController < ApplicationController

  

 
  def index
    @posts = Post.all
  end

   def show 
    @post = Post.find_by_id(params[:id])
    
   end 
 

 
  def new
    @post = Post.new
  end

 
  def edit
  end

  
  def create
    
    @post = Post.new(post_params)
    binding.pry


    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    
    def set_post
      @post = Post.where(params[:id])
    end

    
    def post_params
      params.require(:post).permit(:title, :body, :book_id)
    end
end
