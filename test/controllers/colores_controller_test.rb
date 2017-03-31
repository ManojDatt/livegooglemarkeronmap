require 'test_helper'

class ColoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colore = colores(:one)
  end

  test "should get index" do
    get colores_url
    assert_response :success
  end

  test "should get new" do
    get new_colore_url
    assert_response :success
  end

  test "should create colore" do
    assert_difference('Colore.count') do
      post colores_url, params: { colore: { COL_DESCRIPCION: @colore.COL_DESCRIPCION, PKCOLOR: @colore.PKCOLOR } }
    end

    assert_redirected_to colore_url(Colore.last)
  end

  test "should show colore" do
    get colore_url(@colore)
    assert_response :success
  end

  test "should get edit" do
    get edit_colore_url(@colore)
    assert_response :success
  end

  test "should update colore" do
    patch colore_url(@colore), params: { colore: { COL_DESCRIPCION: @colore.COL_DESCRIPCION, PKCOLOR: @colore.PKCOLOR } }
    assert_redirected_to colore_url(@colore)
  end

  test "should destroy colore" do
    assert_difference('Colore.count', -1) do
      delete colore_url(@colore)
    end

    assert_redirected_to colores_url
  end
end
