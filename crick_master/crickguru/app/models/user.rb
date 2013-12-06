class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
#  attr_accessible :user_name, :ph_number
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
