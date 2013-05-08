class Piadina < ActiveRecord::Base
  attr_accessible :ingredienti, :link, :nome, :prezzo
  
  belongs_to :listinoPiadine
end
