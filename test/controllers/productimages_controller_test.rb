require "test_helper"

class ProductimagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productimage = productimages(:one)
  end

  test "should get index" do
    get productimages_url
    assert_response :success
  end

  test "should get new" do
    get new_productimage_url
    assert_response :success
  end

  test "should create productimage" do
    assert_difference("Productimage.count") do
      post productimages_url, params: { productimage: { image: @productimage.image } }
    end

    assert_redirected_to productimage_url(Productimage.last)
  end

  test "should show productimage" do
    get productimage_url(@productimage)
    assert_response :success
  end

  test "should get edit" do
    get edit_productimage_url(@productimage)
    assert_response :success
  end

  test "should update productimage" do
    patch productimage_url(@productimage), params: { productimage: { image: @productimage.image } }
    assert_redirected_to productimage_url(@productimage)
  end

  test "should destroy productimage" do
    assert_difference("Productimage.count", -1) do
      delete productimage_url(@productimage)
    end

    assert_redirected_to productimages_url
  end
end
