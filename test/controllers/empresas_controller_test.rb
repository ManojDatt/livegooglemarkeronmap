require 'test_helper'

class EmpresasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empresa = empresas(:one)
  end

  test "should get index" do
    get empresas_url
    assert_response :success
  end

  test "should get new" do
    get new_empresa_url
    assert_response :success
  end

  test "should create empresa" do
    assert_difference('Empresa.count') do
      post empresas_url, params: { empresa: { EMP_COLONIA: @empresa.EMP_COLONIA, EMP_CP: @empresa.EMP_CP, EMP_DIRECCION: @empresa.EMP_DIRECCION, EMP_EMAIL: @empresa.EMP_EMAIL, EMP_FAX: @empresa.EMP_FAX, EMP_NOMBRE_COMERCIAL: @empresa.EMP_NOMBRE_COMERCIAL, EMP_PKCIUDAD: @empresa.EMP_PKCIUDAD, EMP_PKESTADO: @empresa.EMP_PKESTADO, EMP_RAZON_SOCIAL: @empresa.EMP_RAZON_SOCIAL, EMP_RFC: @empresa.EMP_RFC, EMP_TEL1: @empresa.EMP_TEL1, EMP_TEL2: @empresa.EMP_TEL2, EMP_TIPO: @empresa.EMP_TIPO, PKEMPRESA: @empresa.PKEMPRESA } }
    end

    assert_redirected_to empresa_url(Empresa.last)
  end

  test "should show empresa" do
    get empresa_url(@empresa)
    assert_response :success
  end

  test "should get edit" do
    get edit_empresa_url(@empresa)
    assert_response :success
  end

  test "should update empresa" do
    patch empresa_url(@empresa), params: { empresa: { EMP_COLONIA: @empresa.EMP_COLONIA, EMP_CP: @empresa.EMP_CP, EMP_DIRECCION: @empresa.EMP_DIRECCION, EMP_EMAIL: @empresa.EMP_EMAIL, EMP_FAX: @empresa.EMP_FAX, EMP_NOMBRE_COMERCIAL: @empresa.EMP_NOMBRE_COMERCIAL, EMP_PKCIUDAD: @empresa.EMP_PKCIUDAD, EMP_PKESTADO: @empresa.EMP_PKESTADO, EMP_RAZON_SOCIAL: @empresa.EMP_RAZON_SOCIAL, EMP_RFC: @empresa.EMP_RFC, EMP_TEL1: @empresa.EMP_TEL1, EMP_TEL2: @empresa.EMP_TEL2, EMP_TIPO: @empresa.EMP_TIPO, PKEMPRESA: @empresa.PKEMPRESA } }
    assert_redirected_to empresa_url(@empresa)
  end

  test "should destroy empresa" do
    assert_difference('Empresa.count', -1) do
      delete empresa_url(@empresa)
    end

    assert_redirected_to empresas_url
  end
end
