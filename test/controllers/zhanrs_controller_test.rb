require 'test_helper'

class ZhanrsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @zhanr = zhanrs(:one)
  end

  test "should get index" do
    get zhanrs_url
    assert_response :success
  end

  test "should get new" do
    get new_zhanr_url
    assert_response :success
  end

  test "should create zhanr" do
    assert_difference('Zhanr.count') do
      post zhanrs_url, params: { zhanr: { zhanr: @zhanr.zhanr } }
    end

    assert_redirected_to zhanr_url(Zhanr.last)
  end

  test "should show zhanr" do
    get zhanr_url(@zhanr)
    assert_response :success
  end

  test "should get edit" do
    get edit_zhanr_url(@zhanr)
    assert_response :success
  end

  test "should update zhanr" do
    patch zhanr_url(@zhanr), params: { zhanr: { zhanr: @zhanr.zhanr } }
    assert_redirected_to zhanr_url(@zhanr)
  end

  test "should destroy zhanr" do
    assert_difference('Zhanr.count', -1) do
      delete zhanr_url(@zhanr)
    end

    assert_redirected_to zhanrs_url
  end
end
