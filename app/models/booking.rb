class Booking < ActiveRecord::Base
  attr_accessible :day_id, :hour_id, :schedule_id, :state, :user_id
end
