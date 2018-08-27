require "application_system_test_case"

class UniversidadesTest < ApplicationSystemTestCase
  setup do
    @universidad = universidades(:one)
  end

  test "visiting the index" do
    visit universidades_url
    assert_selector "h1", text: "Universidades"
  end

  test "creating a Universidad" do
    visit universidades_url
    click_on "New Universidad"

    fill_in "Email", with: @universidad.email
    fill_in "Localidad", with: @universidad.localidad_id
    fill_in "Nombre", with: @universidad.nombre
    fill_in "Reponsable", with: @universidad.reponsable
    click_on "Create Universidad"

    assert_text "Universidad was successfully created"
    click_on "Back"
  end

  test "updating a Universidad" do
    visit universidades_url
    click_on "Edit", match: :first

    fill_in "Email", with: @universidad.email
    fill_in "Localidad", with: @universidad.localidad_id
    fill_in "Nombre", with: @universidad.nombre
    fill_in "Reponsable", with: @universidad.reponsable
    click_on "Update Universidad"

    assert_text "Universidad was successfully updated"
    click_on "Back"
  end

  test "destroying a Universidad" do
    visit universidades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Universidad was successfully destroyed"
  end
end
