class Clinic < ActiveRecord::Base
  attr_accessible :address, :city, :country, :email, :name, :phone, :state, :township
  has_many :schedules

  #before_save {|clinic| clinic.email = email.downcase}
  before_save {|clinic| clinic.name = name.camelize}
  before_save {|clinic| clinic.country = country.camelize}
  before_save {|clinic| clinic.city = city.camelize}
  before_save {|clinic| clinic.state = state.camelize}
  before_save {|clinic| clinic.township = township.camelize}

  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :address, presence: true, uniqueness: {case_sensitive: false}
  validates :city, presence: true
  validates :country, presence: true
  validates :name, presence: true
  validates :phone, presence: true, uniqueness: {case_sensitive: false}
  validates :state, presence: true
  validates :township, presence: true
end
