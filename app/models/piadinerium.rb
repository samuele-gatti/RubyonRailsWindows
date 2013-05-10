#require_relative "../validators/indirizzo_validator"

class Piadinerium < ActiveRecord::Base
 #include ActiveModel::Validations

  attr_accessible :city, :address, :latitude, :longitude, :province, :ragioneSociale, :region
  
  validates :ragioneSociale, :presence => true #{ :message => "La ragione sociale � un campo obbligatorio" }
  validates :ragioneSociale, :format => { :with => /\A[a-zA-Z]+\z/, :message => "sono ammesse soltanto le lettere" }
  validates :city, :region, :province, :presence => true, :if => "!address.empty?" 
  #validate_with IndirizzoValidator
  
  def fullAddress
   [address, city, province].compact.join(', ')
  end
  
  geocoded_by :fullAddress
  after_validation :geocode
  
  has_one :listinoPiadine 
end