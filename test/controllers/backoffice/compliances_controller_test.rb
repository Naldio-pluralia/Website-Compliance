require 'test_helper'

class Backoffice::CompliancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backoffice_compliance = backoffice_compliances(:one)
  end

  test "should get index" do
    get backoffice_compliances_url
    assert_response :success
  end

  test "should get new" do
    get new_backoffice_compliance_url
    assert_response :success
  end

  test "should create backoffice_compliance" do
    assert_difference('Backoffice::Compliance.count') do
      post backoffice_compliances_url, params: { backoffice_compliance: { body: @backoffice_compliance.body, published_at: @backoffice_compliance.published_at, title: @backoffice_compliance.title } }
    end

    assert_redirected_to backoffice_compliance_url(Backoffice::Compliance.last)
  end

  test "should show backoffice_compliance" do
    get backoffice_compliance_url(@backoffice_compliance)
    assert_response :success
  end

  test "should get edit" do
    get edit_backoffice_compliance_url(@backoffice_compliance)
    assert_response :success
  end

  test "should update backoffice_compliance" do
    patch backoffice_compliance_url(@backoffice_compliance), params: { backoffice_compliance: { body: @backoffice_compliance.body, published_at: @backoffice_compliance.published_at, title: @backoffice_compliance.title } }
    assert_redirected_to backoffice_compliance_url(@backoffice_compliance)
  end

  test "should destroy backoffice_compliance" do
    assert_difference('Backoffice::Compliance.count', -1) do
      delete backoffice_compliance_url(@backoffice_compliance)
    end

    assert_redirected_to backoffice_compliances_url
  end
end
