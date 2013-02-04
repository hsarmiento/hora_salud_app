# == Schema Information
#
# Table name: schedules
#
#  id         :integer          not null, primary key
#  doctor_id  :integer
#  clinic_id  :integer
#  day        :string(255)
#  start_time :time
#  end_time   :time
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Schedule < ActiveRecord::Base
  attr_accessible :clinic_id, :day, :doctor_id, :end_time, :start_time, :type
  belongs_to :doctor
  belongs_to :clinic
  has_many :reserves
 
  # validates :doctor_id, presence: true
  # validates :clinic_id, presence: true
end
