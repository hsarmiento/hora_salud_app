# == Schema Information
#
# Table name: days
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  date       :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Day < ActiveRecord::Base
  attr_accessible :date, :name
  has_many :bookings
end
