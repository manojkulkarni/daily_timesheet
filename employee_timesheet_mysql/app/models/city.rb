class City < ActiveRecord::Base
  attr_accessible :city_name
  has_many :users
end
