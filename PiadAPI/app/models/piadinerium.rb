class Piadinerium < ActiveRecord::Base
  attr_accessible :city, :address, :latitude, :longitude, :province, :ragioneSociale, :region
end
