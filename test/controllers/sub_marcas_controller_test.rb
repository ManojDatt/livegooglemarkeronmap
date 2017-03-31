require 'test_helper'

class SubMarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sub_marca = sub_marcas(:one)
  end

  test "should get index" do
    get sub_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_sub_marca_url
    assert_response :success
  end

  test "should create sub_marca" do
    assert_difference('SubMarca.count') do
      post sub_marcas_url, params: { sub_marca: { PKMARCA: @sub_marca.PKMARCA, PKSUBMARCA: @sub_marca.PKSUBMARCA, PKTIPO_AUTO: @sub_marca.PKTIPO_AUTO, SUB_DESCRIPCION: @sub_marca.SUB_DESCRIPCION } }
    end

    assert_redirected_to sub_marca_url(SubMarca.last)
  end

  test "should show sub_marca" do
    get sub_marca_url(@sub_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_sub_marca_url(@sub_marca)
    assert_response :success
  end

  test "should update sub_marca" do
    patch sub_marca_url(@sub_marca), params: { sub_marca: { PKMARCA: @sub_marca.PKMARCA, PKSUBMARCA: @sub_marca.PKSUBMARCA, PKTIPO_AUTO: @sub_marca.PKTIPO_AUTO, SUB_DESCRIPCION: @sub_marca.SUB_DESCRIPCION } }
    assert_redirected_to sub_marca_url(@sub_marca)
  end

  test "should destroy sub_marca" do
    assert_difference('SubMarca.count', -1) do
      delete sub_marca_url(@sub_marca)
    end

    assert_redirected_to sub_marcas_url
  end
end
