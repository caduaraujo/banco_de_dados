require 'test_helper'

class CartaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cartao = cartaos(:one)
  end

  test "should get index" do
    get cartaos_url
    assert_response :success
  end

  test "should get new" do
    get new_cartao_url
    assert_response :success
  end

  test "should create cartao" do
    assert_difference('Cartao.count') do
      post cartaos_url, params: { cartao: { cliente_id: @cartao.cliente_id, nome_titular: @cartao.nome_titular, numero: @cartao.numero, validade: @cartao.validade } }
    end

    assert_redirected_to cartao_url(Cartao.last)
  end

  test "should show cartao" do
    get cartao_url(@cartao)
    assert_response :success
  end

  test "should get edit" do
    get edit_cartao_url(@cartao)
    assert_response :success
  end

  test "should update cartao" do
    patch cartao_url(@cartao), params: { cartao: { cliente_id: @cartao.cliente_id, nome_titular: @cartao.nome_titular, numero: @cartao.numero, validade: @cartao.validade } }
    assert_redirected_to cartao_url(@cartao)
  end

  test "should destroy cartao" do
    assert_difference('Cartao.count', -1) do
      delete cartao_url(@cartao)
    end

    assert_redirected_to cartaos_url
  end
end
