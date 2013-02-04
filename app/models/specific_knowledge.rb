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

class SpecificKnowledge < ActiveRecord::Base
  attr_accessible :description, :doctor_id, :work_area
  belongs_to :doctor

  validates :doctor_id, presence: true
  validates :work_area, presence: true
  validates :description, presence: true
end
