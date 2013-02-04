# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  email      :string(255)
#  password   :string(255)
#  type       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  attr_accessible :email, :last_name, :name, :password, :type
  #has_many :doctors
  #has_many :users
end
