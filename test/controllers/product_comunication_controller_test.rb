require 'test_helper'

class ProductComunicationControllerTest < ActionDispatch::IntegrationTest
  test "should get compliance_alerta" do
    get product_comunication_compliance_alerta_url
    assert_response :success
  end

  test "should get o_que_voce_faria" do
    get product_comunication_o_que_voce_faria_url
    assert_response :success
  end

  test "should get compliance_em_quadrinhos" do
    get product_comunication_compliance_em_quadrinhos_url
    assert_response :success
  end

  test "should get campanhas_padrao" do
    get product_comunication_campanhas_padrao_url
    assert_response :success
  end

  test "should get reunioes_gerenciais" do
    get product_comunication_reunioes_gerenciais_url
    assert_response :success
  end

  test "should get comunicacao_extra" do
    get product_comunication_comunicacao_extra_url
    assert_response :success
  end

  test "should get plano_de_comunicacao" do
    get product_comunication_plano_de_comunicacao_url
    assert_response :success
  end

end
