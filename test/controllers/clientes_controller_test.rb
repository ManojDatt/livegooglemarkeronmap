require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_cliente_url
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { cliente: { COLONIA: @cliente.COLONIA, CONTACTO_TELEFONO1: @cliente.CONTACTO_TELEFONO1, CONTACTO_TELEFONO2: @cliente.CONTACTO_TELEFONO2, CONTACTO_TELEFONO3: @cliente.CONTACTO_TELEFONO3, CP: @cliente.CP, DOMICILIO: @cliente.DOMICILIO, IVA_PORCENTAJE: @cliente.IVA_PORCENTAJE, NOMBRE: @cliente.NOMBRE, PKCIUDAD: @cliente.PKCIUDAD, PKCLIENTE: @cliente.PKCLIENTE, PKESTADO: @cliente.PKESTADO, RETENCION_IVA_PORCENTAJE: @cliente.RETENCION_IVA_PORCENTAJE, RFC: @cliente.RFC } }
    end

    assert_redirected_to cliente_url(Cliente.last)
  end

  test "should show cliente" do
    get cliente_url(@cliente)
    assert_response :success
  end

  test "should get edit" do
    get edit_cliente_url(@cliente)
    assert_response :success
  end

  test "should update cliente" do
    patch cliente_url(@cliente), params: { cliente: { COLONIA: @cliente.COLONIA, CONTACTO_TELEFONO1: @cliente.CONTACTO_TELEFONO1, CONTACTO_TELEFONO2: @cliente.CONTACTO_TELEFONO2, CONTACTO_TELEFONO3: @cliente.CONTACTO_TELEFONO3, CP: @cliente.CP, DOMICILIO: @cliente.DOMICILIO, IVA_PORCENTAJE: @cliente.IVA_PORCENTAJE, NOMBRE: @cliente.NOMBRE, PKCIUDAD: @cliente.PKCIUDAD, PKCLIENTE: @cliente.PKCLIENTE, PKESTADO: @cliente.PKESTADO, RETENCION_IVA_PORCENTAJE: @cliente.RETENCION_IVA_PORCENTAJE, RFC: @cliente.RFC } }
    assert_redirected_to cliente_url(@cliente)
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete cliente_url(@cliente)
    end

    assert_redirected_to clientes_url
  end
end
