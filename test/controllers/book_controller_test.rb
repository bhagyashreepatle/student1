require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get book_add_url
    assert_response :success
  end

  test "should get delete" do
    get book_delete_url
    assert_response :success
  end

  test "should get update" do
    get book_update_url
    assert_response :success
  end

  test "should get search" do
    get book_search_url
    assert_response :success
  end

  test "should get save" do
    get book_save_url
    assert_response :success
  end

  test "should get list" do
    get book_list_url
    assert_response :success
  end

end
