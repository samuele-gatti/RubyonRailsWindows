require 'test_helper'

class ListinoPiadineControllerTest < ActionController::TestCase
  test "should get GetListinoPiadine" do
    get :GetListinoPiadine
    assert_response :success
  end

end
