module ApplicationHelper
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
end
