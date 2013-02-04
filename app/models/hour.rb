# == Schema Information
#
# Table name: hours
#
#  id         :integer          not null, primary key
#  hour       :time
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Hour < ActiveRecord::Base
  attr_accessible :hour
  has_many :bookings
end
