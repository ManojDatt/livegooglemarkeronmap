require 'test_helper'

class DepositosSalidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @depositos_salida = depositos_salidas(:one)
  end

  test "should get index" do
    get depositos_salidas_url
    assert_response :success
  end

  test "should get new" do
    get new_depositos_salida_url
    assert_response :success
  end

  test "should create depositos_salida" do
    assert_difference('DepositosSalida.count') do
      post depositos_salidas_url, params: { depositos_salida: { PKINVENTARIO: @depositos_salida.PKINVENTARIO, S_CLIENTE: @depositos_salida.S_CLIENTE, S_CodigoPostal: @depositos_salida.S_CodigoPostal, S_Colonia: @depositos_salida.S_Colonia, S_DOMICILIO: @depositos_salida.S_DOMICILIO, S_Estado: @depositos_salida.S_Estado, S_FECHAPAGO: @depositos_salida.S_FECHAPAGO, S_FORMA_DE_PAGO: @depositos_salida.S_FORMA_DE_PAGO, S_IVA: @depositos_salida.S_IVA, S_ImporteDiario: @depositos_salida.S_ImporteDiario, S_Localidad: @depositos_salida.S_Localidad, S_METODOPAGO: @depositos_salida.S_METODOPAGO, S_Municipio: @depositos_salida.S_Municipio, S_NUMCTA: @depositos_salida.S_NUMCTA, S_NoExterior: @depositos_salida.S_NoExterior, S_NoInterior: @depositos_salida.S_NoInterior, S_NumDias: @depositos_salida.S_NumDias, S_Pais: @depositos_salida.S_Pais, S_RFC: @depositos_salida.S_RFC, S_SubTotal: @depositos_salida.S_SubTotal, S_Total: @depositos_salida.S_Total } }
    end

    assert_redirected_to depositos_salida_url(DepositosSalida.last)
  end

  test "should show depositos_salida" do
    get depositos_salida_url(@depositos_salida)
    assert_response :success
  end

  test "should get edit" do
    get edit_depositos_salida_url(@depositos_salida)
    assert_response :success
  end

  test "should update depositos_salida" do
    patch depositos_salida_url(@depositos_salida), params: { depositos_salida: { PKINVENTARIO: @depositos_salida.PKINVENTARIO, S_CLIENTE: @depositos_salida.S_CLIENTE, S_CodigoPostal: @depositos_salida.S_CodigoPostal, S_Colonia: @depositos_salida.S_Colonia, S_DOMICILIO: @depositos_salida.S_DOMICILIO, S_Estado: @depositos_salida.S_Estado, S_FECHAPAGO: @depositos_salida.S_FECHAPAGO, S_FORMA_DE_PAGO: @depositos_salida.S_FORMA_DE_PAGO, S_IVA: @depositos_salida.S_IVA, S_ImporteDiario: @depositos_salida.S_ImporteDiario, S_Localidad: @depositos_salida.S_Localidad, S_METODOPAGO: @depositos_salida.S_METODOPAGO, S_Municipio: @depositos_salida.S_Municipio, S_NUMCTA: @depositos_salida.S_NUMCTA, S_NoExterior: @depositos_salida.S_NoExterior, S_NoInterior: @depositos_salida.S_NoInterior, S_NumDias: @depositos_salida.S_NumDias, S_Pais: @depositos_salida.S_Pais, S_RFC: @depositos_salida.S_RFC, S_SubTotal: @depositos_salida.S_SubTotal, S_Total: @depositos_salida.S_Total } }
    assert_redirected_to depositos_salida_url(@depositos_salida)
  end

  test "should destroy depositos_salida" do
    assert_difference('DepositosSalida.count', -1) do
      delete depositos_salida_url(@depositos_salida)
    end

    assert_redirected_to depositos_salidas_url
  end
end
