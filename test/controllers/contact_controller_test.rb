require "test_helper"

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get confirm" do
    get contact_confirm_url
    assert_response :success
  end
end
