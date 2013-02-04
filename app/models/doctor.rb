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

class Doctor < ActiveRecord::Base
  attr_accessible :account_id, :has_avatar, :rut, :specialty, :name, :last_name, :schedules_attributes
  #belongs_to :account
  has_many :schedules
  has_many :specific_knowledges
  has_many :clinics, through: :schedules

  accepts_nested_attributes_for :schedules, allow_destroy: true


  #validates :specialty, presence: true

  def self.search(search)
  	search_condition = "%" + search + "%"
  	find(:all, conditions: ['name LIKE ? OR specialty LIKE ? OR last_name LIKE ?', search_condition, search_condition, search_condition])
  end
end
