class Schedule < ActiveRecord::Base
  attr_accessible :clinic_id, :day, :doctor_id, :end_time, :start_time, :type
  belongs_to :doctor
  belongs_to :clinic
  has_many :schedules

  validates :doctor_id, presence: true
  validates :clinic_id, presence: true
end
