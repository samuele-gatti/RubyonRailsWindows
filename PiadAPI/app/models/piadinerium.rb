class Piadinerium < ActiveRecord::Base
  attr_accessible :city, :address, :latitude, :longitude, :province, :ragioneSociale, :region
  geocoded_by :address
  after_validation :geocode
end
