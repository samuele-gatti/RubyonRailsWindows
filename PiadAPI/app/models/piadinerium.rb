class Piadinerium < ActiveRecord::Base
  attr_accessible :city, :address, :latitude, :longitude, :province, :ragioneSociale, :region
  
  def fullAddress
   [address, city, province].compact.join(', ')
  end
  
  geocoded_by :fullAddress
  after_validation :geocode
end
