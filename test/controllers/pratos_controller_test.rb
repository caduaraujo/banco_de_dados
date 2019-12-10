require 'test_helper'

class PratosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prato = pratos(:one)
  end

  test "should get index" do
    get pratos_url
    assert_response :success
  end

  test "should get new" do
    get new_prato_url
    assert_response :success
  end

  test "should create prato" do
    assert_difference('Prato.count') do
      post pratos_url, params: { prato: { descricao: @prato.descricao, disponibilidade: @prato.disponibilidade, preco: @prato.preco, restaurante_id: @prato.restaurante_id, tempo_estimado: @prato.tempo_estimado } }
    end

    assert_redirected_to prato_url(Prato.last)
  end

  test "should show prato" do
    get prato_url(@prato)
    assert_response :success
  end

  test "should get edit" do
    get edit_prato_url(@prato)
    assert_response :success
  end

  test "should update prato" do
    patch prato_url(@prato), params: { prato: { descricao: @prato.descricao, disponibilidade: @prato.disponibilidade, preco: @prato.preco, restaurante_id: @prato.restaurante_id, tempo_estimado: @prato.tempo_estimado } }
    assert_redirected_to prato_url(@prato)
  end

  test "should destroy prato" do
    assert_difference('Prato.count', -1) do
      delete prato_url(@prato)
    end

    assert_redirected_to pratos_url
  end
end
