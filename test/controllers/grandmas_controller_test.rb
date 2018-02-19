require 'test_helper'

class GrandmasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grandmas_index_url
    assert_response :success
  end

  test "should get show" do
    get grandmas_show_url
    assert_response :success
  end

  test "should get edit" do
    get grandmas_edit_url
    assert_response :success
  end

  test "should get update" do
    get grandmas_update_url
    assert_response :success
  end

end
