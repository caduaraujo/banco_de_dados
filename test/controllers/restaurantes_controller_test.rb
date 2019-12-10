require 'test_helper'

class RestaurantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurante = restaurantes(:one)
  end

  test "should get index" do
    get restaurantes_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurante_url
    assert_response :success
  end

  test "should create restaurante" do
    assert_difference('Restaurante.count') do
      post restaurantes_url, params: { restaurante: { adress_id: @restaurante.adress_id, cnpj: @restaurante.cnpj, horario: @restaurante.horario, nome_fantasia: @restaurante.nome_fantasia, nome_oficial: @restaurante.nome_oficial, phone: @restaurante.phone, tipo_comida: @restaurante.tipo_comida } }
    end

    assert_redirected_to restaurante_url(Restaurante.last)
  end

  test "should show restaurante" do
    get restaurante_url(@restaurante)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurante_url(@restaurante)
    assert_response :success
  end

  test "should update restaurante" do
    patch restaurante_url(@restaurante), params: { restaurante: { adress_id: @restaurante.adress_id, cnpj: @restaurante.cnpj, horario: @restaurante.horario, nome_fantasia: @restaurante.nome_fantasia, nome_oficial: @restaurante.nome_oficial, phone: @restaurante.phone, tipo_comida: @restaurante.tipo_comida } }
    assert_redirected_to restaurante_url(@restaurante)
  end

  test "should destroy restaurante" do
    assert_difference('Restaurante.count', -1) do
      delete restaurante_url(@restaurante)
    end

    assert_redirected_to restaurantes_url
  end
end
