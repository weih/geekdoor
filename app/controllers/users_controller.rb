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
end
