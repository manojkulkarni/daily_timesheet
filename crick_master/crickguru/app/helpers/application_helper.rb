module ApplicationHelper

  def is_admin_user?
    Admins.find_by_email_id(current_user.email) ? true : false
  end

end
