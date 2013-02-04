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

require 'test_helper'

class ScheduleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
