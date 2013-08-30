class ApprovalsController < ApplicationController

  def show
    Timesheet.set_approval_reject(params[:format],params[:id],1)
    redirect_to timesheet_path(params[:id])
    flash[:notice] = "Timesheet approval successful"
  end

end
