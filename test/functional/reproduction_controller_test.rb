require 'test_helper'

class ReproductionControllerTest < ActionController::TestCase
  test "should get mate" do
    get :mate
    assert_response :success
  end

end
