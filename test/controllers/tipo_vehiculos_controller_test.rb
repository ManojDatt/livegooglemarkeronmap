require 'test_helper'

class TipoVehiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_vehiculo = tipo_vehiculos(:one)
  end

  test "should get index" do
    get tipo_vehiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_vehiculo_url
    assert_response :success
  end

  test "should create tipo_vehiculo" do
    assert_difference('TipoVehiculo.count') do
      post tipo_vehiculos_url, params: { tipo_vehiculo: { PKTIPO_AUTO: @tipo_vehiculo.PKTIPO_AUTO, TAUT_CATEGORIA: @tipo_vehiculo.TAUT_CATEGORIA, TAUT_DESCRIPCION: @tipo_vehiculo.TAUT_DESCRIPCION } }
    end

    assert_redirected_to tipo_vehiculo_url(TipoVehiculo.last)
  end

  test "should show tipo_vehiculo" do
    get tipo_vehiculo_url(@tipo_vehiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_vehiculo_url(@tipo_vehiculo)
    assert_response :success
  end

  test "should update tipo_vehiculo" do
    patch tipo_vehiculo_url(@tipo_vehiculo), params: { tipo_vehiculo: { PKTIPO_AUTO: @tipo_vehiculo.PKTIPO_AUTO, TAUT_CATEGORIA: @tipo_vehiculo.TAUT_CATEGORIA, TAUT_DESCRIPCION: @tipo_vehiculo.TAUT_DESCRIPCION } }
    assert_redirected_to tipo_vehiculo_url(@tipo_vehiculo)
  end

  test "should destroy tipo_vehiculo" do
    assert_difference('TipoVehiculo.count', -1) do
      delete tipo_vehiculo_url(@tipo_vehiculo)
    end

    assert_redirected_to tipo_vehiculos_url
  end
end
