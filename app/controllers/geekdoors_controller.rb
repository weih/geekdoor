require "erb"
include ERB::Util

class GeekdoorsController < ApplicationController
  def new
  end

  def create
    current_user.geekdoors << Geekdoor.new(params[:geekdoor])
    if current_user.save
      @current_doors = current_user.geekdoors
      respond_to do |format|
        format.html { redirect_to root_path, :notice => "Successfully!" }
        format.js
      end
    else
      redirect_to root_path, :notice => "error"
    end
  end

  def destroy
    current_user.geekdoors.find(params[:id]).delete
    respond_to do |format|
      format.html { redirect_to root_path, :notice => "Successfully!" }
      format.js
    end
  end
  
  def search
    begin
      if params[:hotkey]
        @door = current_user.geekdoors.where(:hotkey => params[:hotkey])
        redirect_to get_url(params[:keyword], @door[0].url)
      elsif params[:commit]
        @door = current_user.geekdoors.where(:hotkey => params[:commit])
        redirect_to get_url(params[:keyword], @door[0].url)
      end
    rescue NoMethodError
      redirect_to root_path, :notice => "Not Binding for this hotkey" 
    end
  end
  
  protected
  
  def get_url(keyword, url)
    new_url = url.gsub('%s', url_encode(keyword))
  end
end
