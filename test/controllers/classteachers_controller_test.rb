require "test_helper"

class ClassteachersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get classteachers_new_url
    assert_response :success
  end

  test "should get create" do
    get classteachers_create_url
    assert_response :success
  end

  test "should get index" do
    get classteachers_index_url
    assert_response :success
  end
end
