class City < ActiveRecord::Base
  attr_accessible :city_name
  has_many :users

  def self.get_city_id(city)
    self.find_by_city_name(city).id
  end

end
