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

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
