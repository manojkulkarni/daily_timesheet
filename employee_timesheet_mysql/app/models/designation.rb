class Designation < ActiveRecord::Base
  attr_accessible :designation
  has_many :users
end
