require 'test_helper'

class ProductManagementControllerTest < ActionDispatch::IntegrationTest
  test "should get kit_gestao_de_riscos" do
    get product_management_kit_gestao_de_riscos_url
    assert_response :success
  end

  test "should get kit_perfis_profissionais" do
    get product_management_kit_perfis_profissionais_url
    assert_response :success
  end

  test "should get kit_documentacao" do
    get product_management_kit_documentacao_url
    assert_response :success
  end

  test "should get sistema_de_pesquisas" do
    get product_management_sistema_de_pesquisas_url
    assert_response :success
  end

  test "should get gestao_do_desempenho" do
    get product_management_gestao_do_desempenho_url
    assert_response :success
  end

  test "should get gestao_dos_embaixadores" do
    get product_management_gestao_dos_embaixadores_url
    assert_response :success
  end

end
