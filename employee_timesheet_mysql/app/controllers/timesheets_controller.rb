class TimesheetsController < ApplicationController

  def index
    @search_date = @timesheet = Timesheet.new
    @time_records = Timesheet.get_data_by_user_date(session[:user][:id],params[:date].present? ? Date.parse(params[:date]) : Date.today)
    respond_to do |format|
      format.js
      format.html
    end
  end

  def date_timesheet
    @search_date = @timesheet = Timesheet.new
    @time_records = Timesheet.get_data_by_user_date(session[:user][:id],params[:date].present? ? Date.parse(params[:date]) : Date.today)
  end

  def show
    @user_data = Timesheet.where("user_id = #{params[:id]} and approval_flag = 0").select('*').order('date')
    @user_name = User.where("id = #{params[:id]}").select('user_name')
  end

  def create
    @time_record = Timesheet.new({:date => params[:timesheet][:date].blank? ? Date.today.strftime("%d-%m-%Y") : params[:timesheet][:date], :time_from => params[:timesheet][:time_from],
        :time_to => params[:timesheet][:time_to], :task => params[:timesheet][:task], :user_id => session[:user][:id], :approval_flag => 0 })
    if @time_record.valid?
      @time_record.save
      flash[:notice] = 'Successfuly Added.'
    else
      flash[:alert] = @time_record.errors.empty? ? "Error" : @time_record.errors.full_messages.to_sentence
    end
    redirect_to timesheets_path
  end

  def edit
    @timesheet = Timesheet.find_by_id(params[:id])
  end

  def update
    Timesheet.where(:id => params[:id]).update_all(:time_from => params[:timesheet][:time_from], :time_to => params[:timesheet][:time_to], :task => params[:timesheet][:task])
    redirect_to timesheets_path
    flash[:notice] = 'Successfuly Updated.'
  end

  def destroy
    Timesheet.destroy(params[:id])
    redirect_to timesheets_path
    flash[:notice] = 'Successfuly Deleted.'
  end

end
