require "test_helper"

class ManagersControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get managers_home_url
    assert_response :success
  end
end
