# == Schema Information
#
# Table name: bookings
#
#  id          :integer          not null, primary key
#  schedule_id :integer
#  user_id     :integer
#  day_id      :integer
#  hour_id     :integer
#  state       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Booking < ActiveRecord::Base
  attr_accessible :day_id, :hour_id, :schedule_id, :state, :user_id
  belongs_to :schedules
  belongs_to :user
  belongs_to :day
  belongs_to :hour

end
