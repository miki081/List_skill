require 'test_helper'

class OnlinesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get onlines_new_url
    assert_response :success
  end

end
