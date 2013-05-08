class ListinoPiadine < ActiveRecord::Base
  belongs_to :piadinerium
  has_many :piadinas
end
