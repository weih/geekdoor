module ApplicationHelper
  def get_name_from_email(email)
    email.split('@')[0]
  end
end
