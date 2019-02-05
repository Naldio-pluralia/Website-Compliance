require 'test_helper'

class ProductTecnologyControllerTest < ActionDispatch::IntegrationTest
  test "should get compliance_assessment_online" do
    get product_tecnology_compliance_assessment_online_url
    assert_response :success
  end

  test "should get business_partners" do
    get product_tecnology_business_partners_url
    assert_response :success
  end

  test "should get anti_retaliation_tool" do
    get product_tecnology_anti_retaliation_tool_url
    assert_response :success
  end

  test "should get integrity_plus" do
    get product_tecnology_integrity_plus_url
    assert_response :success
  end

end
