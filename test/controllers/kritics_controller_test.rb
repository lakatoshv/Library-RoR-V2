require 'test_helper'

class KriticsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kritic = kritics(:one)
  end

  test "should get index" do
    get kritics_url
    assert_response :success
  end

  test "should get new" do
    get new_kritic_url
    assert_response :success
  end

  test "should create kritic" do
    assert_difference('Kritic.count') do
      post kritics_url, params: { kritic: { eseption: @kritic.eseption, name: @kritic.name, ozinka: @kritic.ozinka, title_book: @kritic.title_book } }
    end

    assert_redirected_to kritic_url(Kritic.last)
  end

  test "should show kritic" do
    get kritic_url(@kritic)
    assert_response :success
  end

  test "should get edit" do
    get edit_kritic_url(@kritic)
    assert_response :success
  end

  test "should update kritic" do
    patch kritic_url(@kritic), params: { kritic: { eseption: @kritic.eseption, name: @kritic.name, ozinka: @kritic.ozinka, title_book: @kritic.title_book } }
    assert_redirected_to kritic_url(@kritic)
  end

  test "should destroy kritic" do
    assert_difference('Kritic.count', -1) do
      delete kritic_url(@kritic)
    end

    assert_redirected_to kritics_url
  end
end
