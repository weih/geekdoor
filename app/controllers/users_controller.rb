class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      redirect_to root_path #, :notice => "Sign up successfully!"
    else
      flash[:alert] = "Invalid Email or Password"
      render "new"
    end
  end
  
  def set_color
    current_user.set(:background_color, params[:background_color]) if params[:background_color]
    current_user.set(:foreground_color, params[:foreground_color]) if params[:foreground_color]
    redirect_to root_path
  end
end
