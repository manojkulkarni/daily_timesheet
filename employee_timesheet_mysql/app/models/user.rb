class User < ActiveRecord::Base
  attr_accessible :password, :salt, :user_name, :designation_id, :city_id
  belongs_to :designation
  belongs_to :city
  has_many :timesheets


  def self.authenticate_user(user)
    original_user = User.find_by_user_name(user[:user_name])
    original_user.nil? ? false : authenticate_password(user,original_user)
  end

  def self.authenticate_password(entered_user,original_user)
    return entered_user[:password].eql?(original_user[:password])
  end

end
