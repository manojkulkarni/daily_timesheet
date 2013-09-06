class Timesheet < ActiveRecord::Base
  attr_accessible :date, :task, :time_from, :time_to, :user_id, :approval_flag
  has_one :user

  validates :time_from, :presence => true
  validates :time_from, :format => { :with => /^(0?[0-9]|1[0-9]|2[01234]):(0?[0-9]|[1-4][0-9]|5[0-9])$/ }, :if => Proc.new{ self.time_from.present? }
  validates :time_to, :presence => true
  validates :time_to, :format => { :with => /^(0?[0-9]|1[0-9]|2[01234]):(0?[0-9]|[1-4][0-9]|5[0-9])$/ }, :if => Proc.new{ self.time_to.present? }
  validates :task, :presence => true

  def self.set_approval_reject(date,id,flag)
    data = self.find_all_by_date_and_user_id(date,id)
    data.each do |rec|
      self.where(:id => rec.id).update_all(:approval_flag => flag)
    end
  end
  
  def self.get_data_by_user_date(user,date)
    self.find_all_by_user_id_and_date(user,date)
  end

end
