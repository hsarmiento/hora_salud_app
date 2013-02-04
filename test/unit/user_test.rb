# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  account_id    :integer
#  rut           :string(255)
#  date_of_birth :date
#  address       :string(255)
#  gender        :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
