require 'test_helper'

class GruasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @grua = gruas(:one)
  end

  test "should get index" do
    get gruas_url
    assert_response :success
  end

  test "should get new" do
    get new_grua_url
    assert_response :success
  end

  test "should create grua" do
    assert_difference('Grua.count') do
      post gruas_url, params: { grua: { GR_BASE: @grua.GR_BASE, GR_CAPACIDAD: @grua.GR_CAPACIDAD, GR_CLAVE: @grua.GR_CLAVE, GR_DESCRIPCION: @grua.GR_DESCRIPCION, GR_ESTADO: @grua.GR_ESTADO, GR_HOROMETRO: @grua.GR_HOROMETRO, GR_MODELO: @grua.GR_MODELO, GR_MOTOR: @grua.GR_MOTOR, GR_NO_SERIE_RADIO: @grua.GR_NO_SERIE_RADIO, GR_ODOMETRO: @grua.GR_ODOMETRO, GR_PERMISOESTATA: @grua.GR_PERMISOESTATA, GR_PERMISOFEDERAL: @grua.GR_PERMISOFEDERAL, GR_PLACAESTATAL: @grua.GR_PLACAESTATAL, GR_PLACAFEDERAL: @grua.GR_PLACAFEDERAL, GR_TIPO: @grua.GR_TIPO, GR_UBICACION_LATITUD: @grua.GR_UBICACION_LATITUD, GR_UBICACION_LONGITUD: @grua.GR_UBICACION_LONGITUD, GR_ULTIMO_REPORTE: @grua.GR_ULTIMO_REPORTE, PKCOMBUSTIBLE: @grua.PKCOMBUSTIBLE, PKEMPRESA: @grua.PKEMPRESA, PKGRUA: @grua.PKGRUA, PKMARCA: @grua.PKMARCA } }
    end

    assert_redirected_to grua_url(Grua.last)
  end

  test "should show grua" do
    get grua_url(@grua)
    assert_response :success
  end

  test "should get edit" do
    get edit_grua_url(@grua)
    assert_response :success
  end

  test "should update grua" do
    patch grua_url(@grua), params: { grua: { GR_BASE: @grua.GR_BASE, GR_CAPACIDAD: @grua.GR_CAPACIDAD, GR_CLAVE: @grua.GR_CLAVE, GR_DESCRIPCION: @grua.GR_DESCRIPCION, GR_ESTADO: @grua.GR_ESTADO, GR_HOROMETRO: @grua.GR_HOROMETRO, GR_MODELO: @grua.GR_MODELO, GR_MOTOR: @grua.GR_MOTOR, GR_NO_SERIE_RADIO: @grua.GR_NO_SERIE_RADIO, GR_ODOMETRO: @grua.GR_ODOMETRO, GR_PERMISOESTATA: @grua.GR_PERMISOESTATA, GR_PERMISOFEDERAL: @grua.GR_PERMISOFEDERAL, GR_PLACAESTATAL: @grua.GR_PLACAESTATAL, GR_PLACAFEDERAL: @grua.GR_PLACAFEDERAL, GR_TIPO: @grua.GR_TIPO, GR_UBICACION_LATITUD: @grua.GR_UBICACION_LATITUD, GR_UBICACION_LONGITUD: @grua.GR_UBICACION_LONGITUD, GR_ULTIMO_REPORTE: @grua.GR_ULTIMO_REPORTE, PKCOMBUSTIBLE: @grua.PKCOMBUSTIBLE, PKEMPRESA: @grua.PKEMPRESA, PKGRUA: @grua.PKGRUA, PKMARCA: @grua.PKMARCA } }
    assert_redirected_to grua_url(@grua)
  end

  test "should destroy grua" do
    assert_difference('Grua.count', -1) do
      delete grua_url(@grua)
    end

    assert_redirected_to gruas_url
  end
end
