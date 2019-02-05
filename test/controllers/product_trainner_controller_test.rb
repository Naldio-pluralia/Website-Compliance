require 'test_helper'

class ProductTrainnerControllerTest < ActionDispatch::IntegrationTest
  test "should get compliance_ead" do
    get product_trainner_compliance_ead_url
    assert_response :success
  end

  test "should get kit_gestor" do
    get product_trainner_kit_gestor_url
    assert_response :success
  end

  test "should get treinamentos_presenciais" do
    get product_trainner_treinamentos_presenciais_url
    assert_response :success
  end

  test "should get train_the_trainer" do
    get product_trainner_train_the_trainer_url
    assert_response :success
  end

  test "should get plano_de_treinamentos" do
    get product_trainner_plano_de_treinamentos_url
    assert_response :success
  end

end
