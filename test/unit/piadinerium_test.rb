require 'test_helper'
require 'mocha/setup'

class PiadineriumTest < ActiveSupport::TestCase

  test "should not save piadineria without ragione sociale" do 
	 piadineria = Piadinerium.create(:address => "")	 	 
     assert !piadineria.save
   end
   
   test "should not save piadineria with ragione sociale contains a number" do 
	 piadineria = Piadinerium.create(:address => "", :ragioneSociale => "L4 Piadineria")	 	 
     assert !piadineria.save
   end
   
end
