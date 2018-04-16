require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get about_us" do
    get abouts_about_us_url
    assert_response :success
  end

  test "should get about_program" do
    get abouts_about_program_url
    assert_response :success
  end

end
