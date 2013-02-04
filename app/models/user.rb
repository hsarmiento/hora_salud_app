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

class User < ActiveRecord::Base
  attr_accessible :account_id, :address, :date_of_birth, :gender, :rut
  belongs_to :account
  has_many :bookings
end
