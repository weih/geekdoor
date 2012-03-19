class HomeController < ApplicationController
  def index
    if current_user
      @user = current_user
    else
      @user = sample_user
    end
  end
  
  def about   
  end
end
