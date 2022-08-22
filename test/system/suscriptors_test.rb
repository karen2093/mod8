require "application_system_test_case"

class SuscriptorsTest < ApplicationSystemTestCase
  setup do
    @suscriptor = suscriptors(:one)
  end

  test "visiting the index" do
    visit suscriptors_url
    assert_selector "h1", text: "Suscriptors"
  end

  test "should create suscriptor" do
    visit suscriptors_url
    click_on "New suscriptor"

    fill_in "Apellido", with: @suscriptor.apellido
    fill_in "Correo", with: @suscriptor.correo
    fill_in "Nombre", with: @suscriptor.nombre
    fill_in "Telefono", with: @suscriptor.telefono
    fill_in "Twitter", with: @suscriptor.twitter
    click_on "Create Suscriptor"

    assert_text "Suscriptor was successfully created"
    click_on "Back"
  end

  test "should update Suscriptor" do
    visit suscriptor_url(@suscriptor)
    click_on "Edit this suscriptor", match: :first

    fill_in "Apellido", with: @suscriptor.apellido
    fill_in "Correo", with: @suscriptor.correo
    fill_in "Nombre", with: @suscriptor.nombre
    fill_in "Telefono", with: @suscriptor.telefono
    fill_in "Twitter", with: @suscriptor.twitter
    click_on "Update Suscriptor"

    assert_text "Suscriptor was successfully updated"
    click_on "Back"
  end

  test "should destroy Suscriptor" do
    visit suscriptor_url(@suscriptor)
    click_on "Destroy this suscriptor", match: :first

    assert_text "Suscriptor was successfully destroyed"
  end
end
