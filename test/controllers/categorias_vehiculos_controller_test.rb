require 'test_helper'

class CategoriasVehiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @categorias_vehiculo = categorias_vehiculos(:one)
  end

  test "should get index" do
    get categorias_vehiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_categorias_vehiculo_url
    assert_response :success
  end

  test "should create categorias_vehiculo" do
    assert_difference('CategoriasVehiculo.count') do
      post categorias_vehiculos_url, params: { categorias_vehiculo: { CAT_DESCRIPCION: @categorias_vehiculo.CAT_DESCRIPCION, CAT_NOTAS: @categorias_vehiculo.CAT_NOTAS, PKCATEGORIA: @categorias_vehiculo.PKCATEGORIA } }
    end

    assert_redirected_to categorias_vehiculo_url(CategoriasVehiculo.last)
  end

  test "should show categorias_vehiculo" do
    get categorias_vehiculo_url(@categorias_vehiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_categorias_vehiculo_url(@categorias_vehiculo)
    assert_response :success
  end

  test "should update categorias_vehiculo" do
    patch categorias_vehiculo_url(@categorias_vehiculo), params: { categorias_vehiculo: { CAT_DESCRIPCION: @categorias_vehiculo.CAT_DESCRIPCION, CAT_NOTAS: @categorias_vehiculo.CAT_NOTAS, PKCATEGORIA: @categorias_vehiculo.PKCATEGORIA } }
    assert_redirected_to categorias_vehiculo_url(@categorias_vehiculo)
  end

  test "should destroy categorias_vehiculo" do
    assert_difference('CategoriasVehiculo.count', -1) do
      delete categorias_vehiculo_url(@categorias_vehiculo)
    end

    assert_redirected_to categorias_vehiculos_url
  end
end
