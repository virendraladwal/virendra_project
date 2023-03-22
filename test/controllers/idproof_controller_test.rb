require "test_helper"

class IdproofControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get idproof_index_url
    assert_response :success
  end
end
