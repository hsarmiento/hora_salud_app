class Account < ActiveRecord::Base
  attr_accessible :email, :last_name, :name, :password, :type
end
