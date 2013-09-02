class StatusesController < ApplicationController

  def index
    @statuses = Timesheet.where("user_id = #{session[:user][:id]}").select('date,approval_flag').uniq
  end

end
