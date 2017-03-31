require 'test_helper'

class ListasPreciosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listas_precio = listas_precios(:one)
  end

  test "should get index" do
    get listas_precios_url
    assert_response :success
  end

  test "should get new" do
    get new_listas_precio_url
    assert_response :success
  end

  test "should create listas_precio" do
    assert_difference('ListasPrecio.count') do
      post listas_precios_url, params: { listas_precio: { LIS_DEFAULT_TAR: @listas_precio.LIS_DEFAULT_TAR, LIS_DESCRIPCION: @listas_precio.LIS_DESCRIPCION, PKLISTA: @listas_precio.PKLISTA } }
    end

    assert_redirected_to listas_precio_url(ListasPrecio.last)
  end

  test "should show listas_precio" do
    get listas_precio_url(@listas_precio)
    assert_response :success
  end

  test "should get edit" do
    get edit_listas_precio_url(@listas_precio)
    assert_response :success
  end

  test "should update listas_precio" do
    patch listas_precio_url(@listas_precio), params: { listas_precio: { LIS_DEFAULT_TAR: @listas_precio.LIS_DEFAULT_TAR, LIS_DESCRIPCION: @listas_precio.LIS_DESCRIPCION, PKLISTA: @listas_precio.PKLISTA } }
    assert_redirected_to listas_precio_url(@listas_precio)
  end

  test "should destroy listas_precio" do
    assert_difference('ListasPrecio.count', -1) do
      delete listas_precio_url(@listas_precio)
    end

    assert_redirected_to listas_precios_url
  end
end
