# coding: utf-8

module ApplicationHelper
  HINT = ["用快捷键搜索啊！", "切换到Geek Door后按一次Tab即可跳到输入区域", "输入内容后直接回车则使用第一个搜索地址进行搜索", "记得在URL中将关键字替换为%s", "若未弹出搜索结果，请查看浏览器是否禁止窗口弹出", "只有焦点在上面的搜索栏时，快捷键搜索才会有效", "选择颜色后记得点击画板右下角保存"]
  
  def get_name_from_email(email)
    email.split('@')[0]
  end
  
  def fork_me
    <<-END
      <a href="https://github.com/weih/geekdoor" target="_blank">
        #{image_tag "fork-me.png", :alt => "Fork me on Github", :style => "position: absolute; top: 0; left: 0; border: 0;"}
      </a>  
    END
  end
  
  def hint
    HINT[rand(HINT.size)]
  end
end
