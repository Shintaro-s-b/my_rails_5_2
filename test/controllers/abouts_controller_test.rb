require 'test_helper'

class AboutsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get abouts_index_url
    assert_response :success
  end

  test "should get manage" do
    get abouts_manage_url
    assert_response :success
  end

end
