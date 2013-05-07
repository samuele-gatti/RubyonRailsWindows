class Piadinerium < ActiveRecord::Base
  attr_accessible :comune, :indirizzo, :latitudine, :longitudine, :provincia, :ragioneSociale, :regione
end
