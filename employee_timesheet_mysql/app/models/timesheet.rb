class Timesheet < ActiveRecord::Base
  attr_accessible :date, :task, :time_from, :time_to, :user_id
  has_one :user
end
