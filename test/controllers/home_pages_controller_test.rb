require 'test_helper'

class HomePagesControllerTest < ActionController::TestCase
  test "should get main_page" do
    get :main_page
    assert_response :success
  end

end
