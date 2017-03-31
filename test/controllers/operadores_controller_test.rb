require 'test_helper'

class OperadoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @operadore = operadores(:one)
  end

  test "should get index" do
    get operadores_url
    assert_response :success
  end

  test "should get new" do
    get new_operadore_url
    assert_response :success
  end

  test "should create operadore" do
    assert_difference('Operadore.count') do
      post operadores_url, params: { operadore: { OP_ACTIVO: @operadore.OP_ACTIVO, OP_CEL_NUMERO: @operadore.OP_CEL_NUMERO, OP_CEL_SERIE: @operadore.OP_CEL_SERIE, OP_CLAVE: @operadore.OP_CLAVE, OP_DOMICILIO: @operadore.OP_DOMICILIO, OP_ESTADO: @operadore.OP_ESTADO, OP_FECHAACTIVO: @operadore.OP_FECHAACTIVO, OP_INGRESO: @operadore.OP_INGRESO, OP_LICESTATAL: @operadore.OP_LICESTATAL, OP_LICFEDERAL: @operadore.OP_LICFEDERAL, OP_NIP: @operadore.OP_NIP, OP_NOMBRE: @operadore.OP_NOMBRE, OP_TIPOLICESTATAL: @operadore.OP_TIPOLICESTATAL, OP_TIPOLICFEDERAL: @operadore.OP_TIPOLICFEDERAL, OP_VENC_LICESTATAL: @operadore.OP_VENC_LICESTATAL, OP_VEN_LICFEDERAL: @operadore.OP_VEN_LICFEDERAL, PKOPERADOR: @operadore.PKOPERADOR } }
    end

    assert_redirected_to operadore_url(Operadore.last)
  end

  test "should show operadore" do
    get operadore_url(@operadore)
    assert_response :success
  end

  test "should get edit" do
    get edit_operadore_url(@operadore)
    assert_response :success
  end

  test "should update operadore" do
    patch operadore_url(@operadore), params: { operadore: { OP_ACTIVO: @operadore.OP_ACTIVO, OP_CEL_NUMERO: @operadore.OP_CEL_NUMERO, OP_CEL_SERIE: @operadore.OP_CEL_SERIE, OP_CLAVE: @operadore.OP_CLAVE, OP_DOMICILIO: @operadore.OP_DOMICILIO, OP_ESTADO: @operadore.OP_ESTADO, OP_FECHAACTIVO: @operadore.OP_FECHAACTIVO, OP_INGRESO: @operadore.OP_INGRESO, OP_LICESTATAL: @operadore.OP_LICESTATAL, OP_LICFEDERAL: @operadore.OP_LICFEDERAL, OP_NIP: @operadore.OP_NIP, OP_NOMBRE: @operadore.OP_NOMBRE, OP_TIPOLICESTATAL: @operadore.OP_TIPOLICESTATAL, OP_TIPOLICFEDERAL: @operadore.OP_TIPOLICFEDERAL, OP_VENC_LICESTATAL: @operadore.OP_VENC_LICESTATAL, OP_VEN_LICFEDERAL: @operadore.OP_VEN_LICFEDERAL, PKOPERADOR: @operadore.PKOPERADOR } }
    assert_redirected_to operadore_url(@operadore)
  end

  test "should destroy operadore" do
    assert_difference('Operadore.count', -1) do
      delete operadore_url(@operadore)
    end

    assert_redirected_to operadores_url
  end
end
