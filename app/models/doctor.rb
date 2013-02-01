class Doctor < ActiveRecord::Base
  attr_accessible :account_id, :has_avatar, :rut, :specialty
  belongs_to :account
  has_many :schedules
  has_many :specific_knowledges

  validates :specialty, presence: true
end
