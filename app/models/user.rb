class User < ActiveRecord::Base
  attr_accessible :account_id, :address, :date_of_birth, :gender, :rut
end