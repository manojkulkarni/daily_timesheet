class UsersController < ApplicationController

  def index
    @users = User.find_all_by_designation_id_and_city_id(1,session[:user][:city_id])
  end

end
