class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.auth(params[:email], params[:password])
    if user
      # session[:user_id] = user.id
      cookies.permanent[:user_id] = user.id
      redirect_to root_path #, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    # session[:user_id] = nil
    cookies.delete(:user_id)
    redirect_to root_url #, :notice => "Logged out!"
  end
end
