require "erb"
include ERB::Util

class GeekdoorsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end
  
  def search
    @door = current_user.geekdoors.where(:hotkey => params[:hotkey]) if params[:hotkey]
    redirect_to get_url(params[:keyword], @door[0].url) if @door[0]
  end
  
  protected
  
  def get_url(keyword, url)
    new_url = url.gsub('%s', url_encode(keyword))
  end
end
