# == Schema Information
#
# Table name: specific_knowledges
#
#  id          :integer          not null, primary key
#  doctor_id   :integer
#  work_area   :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SpecificKnowledgeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
