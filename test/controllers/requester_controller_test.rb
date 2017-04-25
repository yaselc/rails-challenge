require 'test_helper'

class RequesterControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get requester_index_url
    assert_response :success
  end

  test "should get is_valid" do
    get requester_is_valid_url
    assert_response :success
  end

end
