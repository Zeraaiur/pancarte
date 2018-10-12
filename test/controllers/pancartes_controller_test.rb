require 'test_helper'

class PancartesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pancartes_index_url
    assert_response :success
  end

  test "should get show" do
    get pancartes_show_url
    assert_response :success
  end

  test "should get new" do
    get pancartes_new_url
    assert_response :success
  end

  test "should get create" do
    get pancartes_create_url
    assert_response :success
  end

  test "should get edit" do
    get pancartes_edit_url
    assert_response :success
  end

  test "should get update" do
    get pancartes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pancartes_destroy_url
    assert_response :success
  end

end
