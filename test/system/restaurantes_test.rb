require "application_system_test_case"

class RestaurantesTest < ApplicationSystemTestCase
  setup do
    @restaurante = restaurantes(:one)
  end

  test "visiting the index" do
    visit restaurantes_url
    assert_selector "h1", text: "Restaurantes"
  end

  test "creating a Restaurante" do
    visit restaurantes_url
    click_on "New Restaurante"

    fill_in "Adress", with: @restaurante.adress_id
    fill_in "Cnpj", with: @restaurante.cnpj
    fill_in "Horario", with: @restaurante.horario
    fill_in "Nome fantasia", with: @restaurante.nome_fantasia
    fill_in "Nome oficial", with: @restaurante.nome_oficial
    fill_in "Phone", with: @restaurante.phone
    fill_in "Tipo comida", with: @restaurante.tipo_comida
    click_on "Create Restaurante"

    assert_text "Restaurante was successfully created"
    click_on "Back"
  end

  test "updating a Restaurante" do
    visit restaurantes_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @restaurante.adress_id
    fill_in "Cnpj", with: @restaurante.cnpj
    fill_in "Horario", with: @restaurante.horario
    fill_in "Nome fantasia", with: @restaurante.nome_fantasia
    fill_in "Nome oficial", with: @restaurante.nome_oficial
    fill_in "Phone", with: @restaurante.phone
    fill_in "Tipo comida", with: @restaurante.tipo_comida
    click_on "Update Restaurante"

    assert_text "Restaurante was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurante" do
    visit restaurantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurante was successfully destroyed"
  end
end
