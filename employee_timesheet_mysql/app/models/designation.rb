class Designation < ActiveRecord::Base
  attr_accessible :designation
  has_many :users

  def self.get_designation_id(designation)
    self.find_by_designation(designation).id
  end


end
