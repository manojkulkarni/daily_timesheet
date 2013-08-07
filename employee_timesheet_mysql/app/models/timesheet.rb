class Timesheet < ActiveRecord::Base
  attr_accessible :date, :task, :time_from, :time_to
end
