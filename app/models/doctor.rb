class Doctor < ActiveRecord::Base
  attr_accessible :account_id, :has_avatar, :rut, :specialty
end
