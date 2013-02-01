class SpecificKnowledge < ActiveRecord::Base
  attr_accessible :description, :doctor_id, :work_area
  belongs_to :doctor

  validates :doctor_id, presence: true
  validates :work_area, presence: true
  validates :description, presence: true
end
