class UsersController < ApplicationController

  def index
    @users = User.find_all_by_designation_id_and_city_id(1,session[:user][:city_id])
  end

  def new
    @user = User.new
    @designations = Array.new
    @cities = Array.new
    Designation.order('id').each do |designation|
      @designations << designation.designation
    end
    City.order('id').each do |city|
      @cities << city.city_name
    end
  end

  def create
    designation_id = Designation.get_designation_id(params[:user][:designation])
    city_id = City.get_city_id(params[:user][:city])
    if password_match(params[:user][:password],params[:user][:password_confirm])
      @user_record = User.new(:user_name => params[:user][:user_name], :password => params[:user][:password], :designation_id => designation_id, :city_id => city_id )
      if @user_record.valid?
        @user_record.save
        flash[:notice] = 'Successfuly created the user. Please wait for admin communication.'
        redirect_to sessions_path
      else
        flash[:alert] = @user_record.errors.empty? ? "Error" : @user_record.errors.full_messages.to_sentence
        redirect_to new_user_path
      end
    else
      flash[:alert] = "Password and confirm password doesn't match"
      redirect_to new_user_path
    end
  end


  private
  def password_match(password,password_confirm)
    password.eql?(password_confirm)
  end

end
