require "test_helper"

class EquipmentsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get equipments_new_url
    assert_response :success
  end
end
