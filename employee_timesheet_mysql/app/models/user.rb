class User < ActiveRecord::Base
  attr_accessible :password, :salt, :user_name
  has_one :designation, foreign_key: [:designation_id]
end
