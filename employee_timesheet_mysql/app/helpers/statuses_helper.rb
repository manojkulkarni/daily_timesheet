module StatusesHelper

  def check_approval(approval_flag)
    approval_flag.eql?(1) ? '<p style="color:green;">Approved</p>'.html_safe : approval_flag.eql?(2) ? '<p style="color:red;">Rejected</p>'.html_safe : 'Yet to be approved'
  end

  def check_action(approval_flag,date)
    if approval_flag.eql?(0)
      'Wait for approval'
    elsif approval_flag.eql?(1)
      'Timesheet has been approved'
    elsif approval_flag.eql?(2)
      button_to 'Edit timesheet', status_path(date), :method => 'get'
    else
      'wrong action'
    end
  end
  
end
