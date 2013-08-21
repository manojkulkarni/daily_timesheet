class SessionsController < ApplicationController
  def index
  end

  def create
    @user = User.authenticate_user(params[:user])
    if @user
      flash[:notice] = "Successfully logged in"
      session[:user] = @user
    else
      flash[:alert] = "Authentication failed"
      redirect_to :action => "index"
    end
  end

  def destroy
    reset_session
    redirect_to :action => 'index';
    flash[:notice] = "Successfuly logged out"
  end
end
