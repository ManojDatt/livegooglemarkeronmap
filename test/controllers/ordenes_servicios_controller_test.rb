require 'test_helper'

class OrdenesServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ordenes_servicio = ordenes_servicios(:one)
  end

  test "should get index" do
    get ordenes_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_ordenes_servicio_url
    assert_response :success
  end

  test "should create ordenes_servicio" do
    assert_difference('OrdenesServicio.count') do
      post ordenes_servicios_url, params: { ordenes_servicio: { ID: @ordenes_servicio.ID, OS_AJUSTADOR: @ordenes_servicio.OS_AJUSTADOR, OS_ASEGURADO: @ordenes_servicio.OS_ASEGURADO, OS_AUTORIZACION: @ordenes_servicio.OS_AUTORIZACION, OS_DESTINO: @ordenes_servicio.OS_DESTINO, OS_DESTINO_LAT: @ordenes_servicio.OS_DESTINO_LAT, OS_DESTINO_LONG: @ordenes_servicio.OS_DESTINO_LONG, OS_DESTINO_NOTAS: @ordenes_servicio.OS_DESTINO_NOTAS, OS_ESTADO: @ordenes_servicio.OS_ESTADO, OS_FECHAALTA: @ordenes_servicio.OS_FECHAALTA, OS_FECHAASIGNACION: @ordenes_servicio.OS_FECHAASIGNACION, OS_FECHAFIN: @ordenes_servicio.OS_FECHAFIN, OS_FECHAINCIO: @ordenes_servicio.OS_FECHAINCIO, OS_FECHALLEGADA: @ordenes_servicio.OS_FECHALLEGADA, OS_FECHAPROGRAMADA: @ordenes_servicio.OS_FECHAPROGRAMADA, OS_FECHATERMINO: @ordenes_servicio.OS_FECHATERMINO, OS_HOROMETROFINAL: @ordenes_servicio.OS_HOROMETROFINAL, OS_HOROMETROINICIAL: @ordenes_servicio.OS_HOROMETROINICIAL, OS_HRINTER: @ordenes_servicio.OS_HRINTER, OS_KMINTER: @ordenes_servicio.OS_KMINTER, OS_MODELO: @ordenes_servicio.OS_MODELO, OS_NOMBRE: @ordenes_servicio.OS_NOMBRE, OS_ODOMETROFINAL: @ordenes_servicio.OS_ODOMETROFINAL, OS_ODOMETROINICIAL: @ordenes_servicio.OS_ODOMETROINICIAL, OS_ORIGEN: @ordenes_servicio.OS_ORIGEN, OS_ORIGEN_LAT: @ordenes_servicio.OS_ORIGEN_LAT, OS_ORIGEN_LONG: @ordenes_servicio.OS_ORIGEN_LONG, OS_ORIGEN_NOTAS: @ordenes_servicio.OS_ORIGEN_NOTAS, OS_PLACAS: @ordenes_servicio.OS_PLACAS, OS_POLIZA: @ordenes_servicio.OS_POLIZA, OS_PROGRAMADA: @ordenes_servicio.OS_PROGRAMADA, OS_SINIESTRO: @ordenes_servicio.OS_SINIESTRO, OS_TCOMPROMISO: @ordenes_servicio.OS_TCOMPROMISO, OS_TELEFONO: @ordenes_servicio.OS_TELEFONO, PKCLIENTE: @ordenes_servicio.PKCLIENTE, PKCOLOR: @ordenes_servicio.PKCOLOR, PKGRUA: @ordenes_servicio.PKGRUA, PKOPERADOR: @ordenes_servicio.PKOPERADOR, PKSUBMARCA: @ordenes_servicio.PKSUBMARCA } }
    end

    assert_redirected_to ordenes_servicio_url(OrdenesServicio.last)
  end

  test "should show ordenes_servicio" do
    get ordenes_servicio_url(@ordenes_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_ordenes_servicio_url(@ordenes_servicio)
    assert_response :success
  end

  test "should update ordenes_servicio" do
    patch ordenes_servicio_url(@ordenes_servicio), params: { ordenes_servicio: { ID: @ordenes_servicio.ID, OS_AJUSTADOR: @ordenes_servicio.OS_AJUSTADOR, OS_ASEGURADO: @ordenes_servicio.OS_ASEGURADO, OS_AUTORIZACION: @ordenes_servicio.OS_AUTORIZACION, OS_DESTINO: @ordenes_servicio.OS_DESTINO, OS_DESTINO_LAT: @ordenes_servicio.OS_DESTINO_LAT, OS_DESTINO_LONG: @ordenes_servicio.OS_DESTINO_LONG, OS_DESTINO_NOTAS: @ordenes_servicio.OS_DESTINO_NOTAS, OS_ESTADO: @ordenes_servicio.OS_ESTADO, OS_FECHAALTA: @ordenes_servicio.OS_FECHAALTA, OS_FECHAASIGNACION: @ordenes_servicio.OS_FECHAASIGNACION, OS_FECHAFIN: @ordenes_servicio.OS_FECHAFIN, OS_FECHAINCIO: @ordenes_servicio.OS_FECHAINCIO, OS_FECHALLEGADA: @ordenes_servicio.OS_FECHALLEGADA, OS_FECHAPROGRAMADA: @ordenes_servicio.OS_FECHAPROGRAMADA, OS_FECHATERMINO: @ordenes_servicio.OS_FECHATERMINO, OS_HOROMETROFINAL: @ordenes_servicio.OS_HOROMETROFINAL, OS_HOROMETROINICIAL: @ordenes_servicio.OS_HOROMETROINICIAL, OS_HRINTER: @ordenes_servicio.OS_HRINTER, OS_KMINTER: @ordenes_servicio.OS_KMINTER, OS_MODELO: @ordenes_servicio.OS_MODELO, OS_NOMBRE: @ordenes_servicio.OS_NOMBRE, OS_ODOMETROFINAL: @ordenes_servicio.OS_ODOMETROFINAL, OS_ODOMETROINICIAL: @ordenes_servicio.OS_ODOMETROINICIAL, OS_ORIGEN: @ordenes_servicio.OS_ORIGEN, OS_ORIGEN_LAT: @ordenes_servicio.OS_ORIGEN_LAT, OS_ORIGEN_LONG: @ordenes_servicio.OS_ORIGEN_LONG, OS_ORIGEN_NOTAS: @ordenes_servicio.OS_ORIGEN_NOTAS, OS_PLACAS: @ordenes_servicio.OS_PLACAS, OS_POLIZA: @ordenes_servicio.OS_POLIZA, OS_PROGRAMADA: @ordenes_servicio.OS_PROGRAMADA, OS_SINIESTRO: @ordenes_servicio.OS_SINIESTRO, OS_TCOMPROMISO: @ordenes_servicio.OS_TCOMPROMISO, OS_TELEFONO: @ordenes_servicio.OS_TELEFONO, PKCLIENTE: @ordenes_servicio.PKCLIENTE, PKCOLOR: @ordenes_servicio.PKCOLOR, PKGRUA: @ordenes_servicio.PKGRUA, PKOPERADOR: @ordenes_servicio.PKOPERADOR, PKSUBMARCA: @ordenes_servicio.PKSUBMARCA } }
    assert_redirected_to ordenes_servicio_url(@ordenes_servicio)
  end

  test "should destroy ordenes_servicio" do
    assert_difference('OrdenesServicio.count', -1) do
      delete ordenes_servicio_url(@ordenes_servicio)
    end

    assert_redirected_to ordenes_servicios_url
  end
end
