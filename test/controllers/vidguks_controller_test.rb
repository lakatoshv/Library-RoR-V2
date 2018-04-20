require 'test_helper'

class VidguksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vidguk = vidguks(:one)
  end

  test "should get index" do
    get vidguks_url
    assert_response :success
  end

  test "should get new" do
    get new_vidguk_url
    assert_response :success
  end

  test "should create vidguk" do
    assert_difference('Vidguk.count') do
      post vidguks_url, params: { vidguk: { date: @vidguk.date, name: @vidguk.name, title_book: @vidguk.title_book, vidguk: @vidguk.vidguk } }
    end

    assert_redirected_to vidguk_url(Vidguk.last)
  end

  test "should show vidguk" do
    get vidguk_url(@vidguk)
    assert_response :success
  end

  test "should get edit" do
    get edit_vidguk_url(@vidguk)
    assert_response :success
  end

  test "should update vidguk" do
    patch vidguk_url(@vidguk), params: { vidguk: { date: @vidguk.date, name: @vidguk.name, title_book: @vidguk.title_book, vidguk: @vidguk.vidguk } }
    assert_redirected_to vidguk_url(@vidguk)
  end

  test "should destroy vidguk" do
    assert_difference('Vidguk.count', -1) do
      delete vidguk_url(@vidguk)
    end

    assert_redirected_to vidguks_url
  end
end
