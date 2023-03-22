require "application_system_test_case"

class ProductimagesTest < ApplicationSystemTestCase
  setup do
    @productimage = productimages(:one)
  end

  test "visiting the index" do
    visit productimages_url
    assert_selector "h1", text: "Productimages"
  end

  test "should create productimage" do
    visit productimages_url
    click_on "New productimage"

    fill_in "Image", with: @productimage.image
    click_on "Create Productimage"

    assert_text "Productimage was successfully created"
    click_on "Back"
  end

  test "should update Productimage" do
    visit productimage_url(@productimage)
    click_on "Edit this productimage", match: :first

    fill_in "Image", with: @productimage.image
    click_on "Update Productimage"

    assert_text "Productimage was successfully updated"
    click_on "Back"
  end

  test "should destroy Productimage" do
    visit productimage_url(@productimage)
    click_on "Destroy this productimage", match: :first

    assert_text "Productimage was successfully destroyed"
  end
end
