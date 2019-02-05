require 'test_helper'

class ProductConsultControllerTest < ActionDispatch::IntegrationTest
  test "should get avaliacao_risco_compliance" do
    get product_consult_avaliacao_risco_compliance_url
    assert_response :success
  end

  test "should get apoio_a_alta_direcao" do
    get product_consult_apoio_a_alta_direcao_url
    assert_response :success
  end

  test "should get documentacao_de_compliance" do
    get product_consult_documentacao_de_compliance_url
    assert_response :success
  end

  test "should get processos_e_controles" do
    get product_consult_processos_e_controles_url
    assert_response :success
  end

  test "should get comunicacao" do
    get product_consult_comunicacao_url
    assert_response :success
  end

  test "should get treinamentos_em_compliance" do
    get product_consult_treinamentos_em_compliance_url
    assert_response :success
  end

  test "should get efectividade_dos_processos_de_compliance" do
    get product_consult_efectividade_dos_processos_de_compliance_url
    assert_response :success
  end

  test "should get investigacao_e_reporte" do
    get product_consult_investigacao_e_reporte_url
    assert_response :success
  end

  test "should get due_diligence" do
    get product_consult_due_diligence_url
    assert_response :success
  end

  test "should get compliance_assessment" do
    get product_consult_compliance_assessment_url
    assert_response :success
  end

  test "should get compliance_na_area_de_suprimentos" do
    get product_consult_compliance_na_area_de_suprimentos_url
    assert_response :success
  end

  test "should get apoio_ao_comite_etica" do
    get product_consult_apoio_ao_comite_etica_url
    assert_response :success
  end

  test "should get coaching_ao_compliance_officer" do
    get product_consult_coaching_ao_compliance_officer_url
    assert_response :success
  end

end
