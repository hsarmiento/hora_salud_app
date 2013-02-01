class Clinic < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :name, :phone, :state, :township
end
