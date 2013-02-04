# == Schema Information
#
# Table name: doctors
#
#  id         :integer          not null, primary key
#  account_id :integer
#  rut        :string(255)
#  specialty  :string(255)
#  has_avatar :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string(255)
#  last_name  :string(255)
#

require 'test_helper'

class DoctorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
