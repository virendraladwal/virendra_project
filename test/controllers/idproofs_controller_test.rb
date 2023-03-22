require "test_helper"

class IdproofsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get idproofs_index_url
    assert_response :success
  end
end
