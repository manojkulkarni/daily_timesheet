class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate_user!





    protected

    def configure_permitted_parameters
      #    devise_parameter_sanitizer.for(:sign_up) << :user_name
      devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_name, :ph_number, :address, :email, :password, :city, :state, :contry, :PoI, :PoA, :team_name) }
    end

    # def configure_permitted_parameters
    #   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :email) }
    # end

  

  end
