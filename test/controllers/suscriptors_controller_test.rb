require "test_helper"

class SuscriptorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suscriptor = suscriptors(:one)
  end

  test "should get index" do
    get suscriptors_url
    assert_response :success
  end

  test "should get new" do
    get new_suscriptor_url
    assert_response :success
  end

  test "should create suscriptor" do
    assert_difference("Suscriptor.count") do
      post suscriptors_url, params: { suscriptor: { apellido: @suscriptor.apellido, correo: @suscriptor.correo, nombre: @suscriptor.nombre, telefono: @suscriptor.telefono, twitter: @suscriptor.twitter } }
    end

    assert_redirected_to suscriptor_url(Suscriptor.last)
  end

  test "should show suscriptor" do
    get suscriptor_url(@suscriptor)
    assert_response :success
  end

  test "should get edit" do
    get edit_suscriptor_url(@suscriptor)
    assert_response :success
  end

  test "should update suscriptor" do
    patch suscriptor_url(@suscriptor), params: { suscriptor: { apellido: @suscriptor.apellido, correo: @suscriptor.correo, nombre: @suscriptor.nombre, telefono: @suscriptor.telefono, twitter: @suscriptor.twitter } }
    assert_redirected_to suscriptor_url(@suscriptor)
  end

  test "should destroy suscriptor" do
    assert_difference("Suscriptor.count", -1) do
      delete suscriptor_url(@suscriptor)
    end

    assert_redirected_to suscriptors_url
  end
end
