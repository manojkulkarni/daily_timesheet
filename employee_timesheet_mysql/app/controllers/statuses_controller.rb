class StatusesController < ApplicationController

  def index
    @statuses = Timesheet.where("user_id = #{session[:user][:id]}").select('date,approval_flag').uniq.order('date DESC')
  end

  def show
    @user_data = Timesheet.where("date = '#{params[:id]}' and user_id = #{session[:user][:id]}").select('*')
    raise @user_data.inspect
  end

end
