require 'test_helper'

class PiadineriumTest < ActiveSupport::TestCase
  test "should not save piadineria without ragione sociale" do
	 piadineria = Piadinerium.new
     assert !piadineria.save
   end
end
