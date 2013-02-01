class Account < ActiveRecord::Base
  attr_accessible :email, :last_name, :name, :password, :type
  has_many :doctors
  has_many :users
end
