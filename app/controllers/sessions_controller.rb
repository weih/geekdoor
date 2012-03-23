class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.auth(params[:email], params[:password])
    if user
      cookies.permanent[:user_id] = user.id
      redirect_to root_path
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end

  def destroy
    cookies.delete(:user_id)
    redirect_to root_url
  end
end
