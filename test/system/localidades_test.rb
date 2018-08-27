require "application_system_test_case"

class LocalidadesTest < ApplicationSystemTestCase
  setup do
    @localidad = localidades(:one)
  end

  test "visiting the index" do
    visit localidades_url
    assert_selector "h1", text: "Localidades"
  end

  test "creating a Localidad" do
    visit localidades_url
    click_on "New Localidad"

    fill_in "Nombre", with: @localidad.nombre
    click_on "Create Localidad"

    assert_text "Localidad was successfully created"
    click_on "Back"
  end

  test "updating a Localidad" do
    visit localidades_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @localidad.nombre
    click_on "Update Localidad"

    assert_text "Localidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Localidad" do
    visit localidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localidad was successfully destroyed"
  end
end
