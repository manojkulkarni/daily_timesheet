class Timesheet < ActiveRecord::Base
  attr_accessible :date, :task, :time_from, :time_to, :user_id
  has_one :user

  validates :time_from, :presence => true
  validates :time_from, :format => { :with => /^(0?[0-9]|1[0-9]|2[01234]):(0?[0-9]|[1-4][0-9]|5[0-9])$/ }, :if => Proc.new{ self.time_from.present? }
  validates :time_to, :presence => true
  validates :time_to, :format => { :with => /^(0?[0-9]|1[0-9]|2[01234]):(0?[0-9]|[1-4][0-9]|5[0-9])$/ }, :if => Proc.new{ self.time_to.present? }
  validates :task, :presence => true
end
