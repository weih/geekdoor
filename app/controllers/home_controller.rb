# coding: utf-8

class HomeController < ApplicationController
  def index
    @hint = ["用快捷键搜索啊！", "切换到Geek Door后按一次Tab即可跳到输入区域", "输入内容后直接回车则使用第一个搜索地址进行搜索", "记得在URL中将关键字替换为%s", "若未弹出搜索结果，请查看浏览器是否禁止窗口弹出", "只有焦点在上面的搜索栏时，快捷键搜索才会有效"].shuffle!
    if current_user
      @user = current_user
    else
      @user = sample_user
    end
  end
  
  def about   
  end
end
