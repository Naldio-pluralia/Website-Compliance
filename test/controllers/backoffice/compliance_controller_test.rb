require 'test_helper'

class Backoffice::ComplianceControllerTest < ActionDispatch::IntegrationTest
  test "should get bashboard" do
    get backoffice_compliance_bashboard_url
    assert_response :success
  end

end
