class ApplicationController < ActionController::Base
  before_action set: :sessions
  helper_method :current_user
  helper_method :logged_in?

  def current_user
    @current_user ||= User.find_by(id: session[:user])
  end

  def logged_in?
       
    !current_user.nil?  
end

end
