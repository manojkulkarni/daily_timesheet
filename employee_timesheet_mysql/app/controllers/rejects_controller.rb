class RejectsController < ApplicationController

  def show
    Timesheet.set_approval_reject(params[:format],params[:id],2)
    redirect_to timesheet_path(params[:id])
    flash[:alert] = "Timesheet has been rejected"
  end
  
end
