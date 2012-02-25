class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :sign_in
  
  private
  def current_user
    @current_user ||= User.find(cookies[:user_id]) if cookies[:user_id]
  end
  
  def sign_in(user)
    session[:user_id] = user.id
  end
end
