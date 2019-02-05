require 'test_helper'

class ComplianceControllerTest < ActionDispatch::IntegrationTest
  test "should get mentoring" do
    get compliance_mentoring_url
    assert_response :success
  end

  test "should get suply" do
    get compliance_suply_url
    assert_response :success
  end

  test "should get consultoria_especializada" do
    get compliance_consultoria_especializada_url
    assert_response :success
  end

  test "should get solucoes_comunicacao" do
    get compliance_solucoes_comunicacao_url
    assert_response :success
  end

  test "should get solucoes_treinamentos" do
    get compliance_solucoes_treinamentos_url
    assert_response :success
  end

  test "should get solucoes_gestao" do
    get compliance_solucoes_gestao_url
    assert_response :success
  end

  test "should get tecnologia_compliance" do
    get compliance_tecnologia_compliance_url
    assert_response :success
  end

  test "should get canal_denuncias" do
    get compliance_canal_denuncias_url
    assert_response :success
  end

end
