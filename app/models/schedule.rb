class Schedule < ActiveRecord::Base
  attr_accessible :clinic_id, :day, :doctor_id, :end_time, :start_time, :type
end
