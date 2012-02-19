class HomeController < ApplicationController
  def index
    @users = User.all
    if current_user
      @current_doors = current_user.geekdoors
    end
  end
end
