require "application_system_test_case"

class CartaosTest < ApplicationSystemTestCase
  setup do
    @cartao = cartaos(:one)
  end

  test "visiting the index" do
    visit cartaos_url
    assert_selector "h1", text: "Cartaos"
  end

  test "creating a Cartao" do
    visit cartaos_url
    click_on "New Cartao"

    fill_in "Cliente", with: @cartao.user_id
    fill_in "Nome titular", with: @cartao.nome_titular
    fill_in "Numero", with: @cartao.numero
    fill_in "Validade", with: @cartao.validade
    click_on "Create Cartao"

    assert_text "Cartao was successfully created"
    click_on "Back"
  end

  test "updating a Cartao" do
    visit cartaos_url
    click_on "Edit", match: :first

    fill_in "Cliente", with: @cartao.user_id
    fill_in "Nome titular", with: @cartao.nome_titular
    fill_in "Numero", with: @cartao.numero
    fill_in "Validade", with: @cartao.validade
    click_on "Update Cartao"

    assert_text "Cartao was successfully updated"
    click_on "Back"
  end

  test "destroying a Cartao" do
    visit cartaos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cartao was successfully destroyed"
  end
end
