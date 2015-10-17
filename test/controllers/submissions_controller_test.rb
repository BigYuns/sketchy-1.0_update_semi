require 'test_helper'

class SubmissionsControllerTest < ActionController::TestCase
  test "should get save" do
    get :save
    assert_response :success
  end

end
