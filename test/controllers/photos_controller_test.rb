require "test_helper"

class PhotosControllerTest < ActionDispatch::IntegrationTest
  test "should get public" do
    get photos_public_url
    assert_response :success
  end

  test "should get private" do
    get photos_private_url
    assert_response :success
  end

  test "should get create" do
    get photos_create_url
    assert_response :success
  end

  test "should get new" do
    get photos_new_url
    assert_response :success
  end
end
