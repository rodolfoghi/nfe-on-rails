require "test_helper"

class UfsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ufs_index_url
    assert_response :success
  end
end
