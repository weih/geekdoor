class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_user, :sign_in
  
  private
  def current_user
    begin
      @current_user ||= User.find(cookies[:user_id]) if cookies[:user_id]
    rescue Mongoid::Errors::DocumentNotFound
      nil
    end
  end
  
  def sign_in(user)
    cookies.permanent[:user_id] = user.id
  end
  
  def sample_user
    User.first
  end
end
