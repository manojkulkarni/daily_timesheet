module TimesheetsHelper

  def get_placeholder(user,for_param,default)
    user.nil? ? default : user[for_param].blank? ? default : user[for_param]
  end

end
