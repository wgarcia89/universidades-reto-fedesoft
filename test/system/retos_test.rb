require "application_system_test_case"

class RetosTest < ApplicationSystemTestCase
  setup do
    @reto = retos(:one)
  end

  test "visiting the index" do
    visit retos_url
    assert_selector "h1", text: "Retos"
  end

  test "creating a Reto" do
    visit retos_url
    click_on "New Reto"

    fill_in "Descripcion", with: @reto.descripcion
    fill_in "Email", with: @reto.email
    fill_in "Localidad", with: @reto.localidad_id
    fill_in "Nombre Completo", with: @reto.nombre_completo
    fill_in "Telefono", with: @reto.telefono
    fill_in "Titulo", with: @reto.titulo
    click_on "Create Reto"

    assert_text "Reto was successfully created"
    click_on "Back"
  end

  test "updating a Reto" do
    visit retos_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @reto.descripcion
    fill_in "Email", with: @reto.email
    fill_in "Localidad", with: @reto.localidad_id
    fill_in "Nombre Completo", with: @reto.nombre_completo
    fill_in "Telefono", with: @reto.telefono
    fill_in "Titulo", with: @reto.titulo
    click_on "Update Reto"

    assert_text "Reto was successfully updated"
    click_on "Back"
  end

  test "destroying a Reto" do
    visit retos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reto was successfully destroyed"
  end
end
