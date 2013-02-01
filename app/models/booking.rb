class Booking < ActiveRecord::Base
  attr_accessible :day_id, :hour_id, :schedule_id, :state, :user_id
  belongs_to :schedules
  belongs_to :user
  belongs_to :day
  belongs_to :hour

end
