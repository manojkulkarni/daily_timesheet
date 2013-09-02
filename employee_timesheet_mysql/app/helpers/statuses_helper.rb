module StatusesHelper

  def check_approval(approval_flag)
    approval_flag.eql?(1) ? '<p style="color:green;">Approved</p>'.html_safe : approval_flag.eql?(2) ? '<p style="color:red;">Rejected</p>'.html_safe : 'Yet to be approved'
  end

end
