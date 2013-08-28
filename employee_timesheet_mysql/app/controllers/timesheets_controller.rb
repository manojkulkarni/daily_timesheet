class TimesheetsController < ApplicationController
  
  def index
    #    raise params.inspect
    @time_records = Timesheet.find_all_by_user_id_and_date(session[:user][:id],Date.today)
    @timesheet = Timesheet.new
  end

  def show
#    @user_data = Timesheet.find_all_by_user_id(params[:id])
    @user_data = Timesheet.where("user_id = #{params[:id]}").select('*').order('date')
#    raise @user_data.inspect
  end

  def create
    @time_record = Timesheet.new({:date => params[:timesheet][:date].blank? ? Date.today.strftime("%d-%m-%Y") : params[:timesheet][:date], :time_from => params[:timesheet][:time_from],
        :time_to => params[:timesheet][:time_to], :task => params[:timesheet][:task], :user_id => session[:user][:id] })
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
