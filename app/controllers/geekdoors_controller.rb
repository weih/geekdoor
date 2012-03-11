# coding: utf-8

require "erb"
include ERB::Util

class GeekdoorsController < ApplicationController
  # cause i don't konw how to use delete method with ajax
  # i use get for instead
  # should refactor, it just works for now!!
  def show
    @user = current_user
    @user.geekdoors.find(params[:id]).delete
    render 'destroy'
    return
  end

  def create
    current_user.geekdoors << Geekdoor.new(params[:geekdoor])
    if current_user.save
      # @current_doors = current_user.geekdoors
      @user = current_user
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      redirect_to root_path, :notice => "error"
    end
  end

  def destroy
    # @user.geekdoors.find(params[:id]).delete
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js
    end
  end
  
  def search
    user = current_user || User.first
    begin
      if params[:hotkey]
        @door = user.geekdoors.where(:hotkey => params[:hotkey])[0]
        redirect_to get_url(params[:keyword], @door.url)
      elsif params[:commit]
        @door = user.geekdoors.where(:hotkey => params[:commit])[0]
        redirect_to get_url(params[:keyword], @door.url)
      end
    rescue NoMethodError
      redirect_to root_path, :notice => "这个快捷键还没绑定任何搜索呢（记得关闭这个新窗口）" 
    end
  end
  
  protected
  
  def get_url(keyword, url)
    new_url = url.gsub('%s', url_encode(keyword))
  end
end
