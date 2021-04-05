require 'pry'
class SessionsController < ApplicationController
  

  def home 
    @current_user =  User.find_by_id(session[:id])
   
  end
def show 
  @current_user = User.find_by_id(session[:id])
end

  def login
  
  end

  def index 
    @current_user = User.find_by_id(session[:current_user_id])
  end
  
  def create 
    
    user = User.find_by(username: "nico")
    session[:user_id] = user.id
    redirect_to user_path(user)
   
  end
   
  def new
    @user = User.find_by_id(session[:id])
  end

  def destroy
    session.delete :username
    redirect_to login_path
  end

end
