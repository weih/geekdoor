# coding: utf-8

class HomeController < ApplicationController
  def index
    @hint = ["用快捷键搜索啊！", "切换到任意门后按一次Tab即可跳到输入区域", "输入内容后直接回车则使用第一个搜索地址进行搜索", "记得在URL中将关键字替换为%s"].shuffle!
    if current_user
      @user = current_user
    else
      @user = User.first
    end
  end
  
  def about
    
  end
end
