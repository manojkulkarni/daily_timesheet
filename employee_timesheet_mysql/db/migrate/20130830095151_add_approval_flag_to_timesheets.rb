class AddApprovalFlagToTimesheets < ActiveRecord::Migration
  def change
    add_column :timesheets, :approval_flag, :integer
  end
end
