class Piadina < ActiveRecord::Base
  attr_accessible :ingredienti, :link, :nome, :prezzo, :descrizione
  
  belongs_to :listinoPiadine
end
