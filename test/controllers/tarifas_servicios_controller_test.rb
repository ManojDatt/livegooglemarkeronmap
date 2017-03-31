require 'test_helper'

class TarifasServiciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarifas_servicio = tarifas_servicios(:one)
  end

  test "should get index" do
    get tarifas_servicios_url
    assert_response :success
  end

  test "should get new" do
    get new_tarifas_servicio_url
    assert_response :success
  end

  test "should create tarifas_servicio" do
    assert_difference('TarifasServicio.count') do
      post tarifas_servicios_url, params: { tarifas_servicio: { PKSERVICIO: @tarifas_servicio.PKSERVICIO, SER_DESCRIPCION: @tarifas_servicio.SER_DESCRIPCION, SER_NOTAS: @tarifas_servicio.SER_NOTAS } }
    end

    assert_redirected_to tarifas_servicio_url(TarifasServicio.last)
  end

  test "should show tarifas_servicio" do
    get tarifas_servicio_url(@tarifas_servicio)
    assert_response :success
  end

  test "should get edit" do
    get edit_tarifas_servicio_url(@tarifas_servicio)
    assert_response :success
  end

  test "should update tarifas_servicio" do
    patch tarifas_servicio_url(@tarifas_servicio), params: { tarifas_servicio: { PKSERVICIO: @tarifas_servicio.PKSERVICIO, SER_DESCRIPCION: @tarifas_servicio.SER_DESCRIPCION, SER_NOTAS: @tarifas_servicio.SER_NOTAS } }
    assert_redirected_to tarifas_servicio_url(@tarifas_servicio)
  end

  test "should destroy tarifas_servicio" do
    assert_difference('TarifasServicio.count', -1) do
      delete tarifas_servicio_url(@tarifas_servicio)
    end

    assert_redirected_to tarifas_servicios_url
  end
end
