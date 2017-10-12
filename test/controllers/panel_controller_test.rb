require 'test_helper'

class PanelControllerTest < ActionDispatch::IntegrationTest
  test "should get admin" do
    get panel_admin_url
    assert_response :success
  end

end
