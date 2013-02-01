class Day < ActiveRecord::Base
  attr_accessible :date, :name
  has_many :bookings
end
