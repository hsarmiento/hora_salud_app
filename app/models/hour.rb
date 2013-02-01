class Hour < ActiveRecord::Base
  attr_accessible :hour
  has_many :bookings
end
