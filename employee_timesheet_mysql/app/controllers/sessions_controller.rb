class SessionsController < ApplicationController
  def index
  end

  def create
    @user = User.authenticate_user(params[:user])
    if @user.eql?(true)
      flash[:notice] = "Successfully logged in"
    else
      flash[:alert] = "Authentication failed"
      redirect_to :action => "index"
    end
  end
end
