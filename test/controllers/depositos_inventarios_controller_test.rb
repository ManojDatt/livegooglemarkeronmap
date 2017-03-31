require 'test_helper'

class DepositosInventariosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @depositos_inventario = depositos_inventarios(:one)
  end

  test "should get index" do
    get depositos_inventarios_url
    assert_response :success
  end

  test "should get new" do
    get new_depositos_inventario_url
    assert_response :success
  end

  test "should create depositos_inventario" do
    assert_difference('DepositosInventario.count') do
      post depositos_inventarios_url, params: { depositos_inventario: { INV_AUTORIDAD: @depositos_inventario.INV_AUTORIDAD, INV_CONDICION: @depositos_inventario.INV_CONDICION, INV_FDETENCION: @depositos_inventario.INV_FDETENCION, INV_FINGRESO: @depositos_inventario.INV_FINGRESO, INV_FOLIODETENCION: @depositos_inventario.INV_FOLIODETENCION, INV_LUGARDETENCION: @depositos_inventario.INV_LUGARDETENCION, INV_MODELO: @depositos_inventario.INV_MODELO, INV_MOTIVODETENCION: @depositos_inventario.INV_MOTIVODETENCION, INV_NOMOTOR: @depositos_inventario.INV_NOMOTOR, INV_NOSERIE: @depositos_inventario.INV_NOSERIE, INV_NUMORDEN: @depositos_inventario.INV_NUMORDEN, PKCOLOR: @depositos_inventario.PKCOLOR, PKDEPOSITO: @depositos_inventario.PKDEPOSITO, PKINVENTARIO: @depositos_inventario.PKINVENTARIO, PKMARCA: @depositos_inventario.PKMARCA, PKSUBMARCA: @depositos_inventario.PKSUBMARCA, PKTIPO_AUTO: @depositos_inventario.PKTIPO_AUTO } }
    end

    assert_redirected_to depositos_inventario_url(DepositosInventario.last)
  end

  test "should show depositos_inventario" do
    get depositos_inventario_url(@depositos_inventario)
    assert_response :success
  end

  test "should get edit" do
    get edit_depositos_inventario_url(@depositos_inventario)
    assert_response :success
  end

  test "should update depositos_inventario" do
    patch depositos_inventario_url(@depositos_inventario), params: { depositos_inventario: { INV_AUTORIDAD: @depositos_inventario.INV_AUTORIDAD, INV_CONDICION: @depositos_inventario.INV_CONDICION, INV_FDETENCION: @depositos_inventario.INV_FDETENCION, INV_FINGRESO: @depositos_inventario.INV_FINGRESO, INV_FOLIODETENCION: @depositos_inventario.INV_FOLIODETENCION, INV_LUGARDETENCION: @depositos_inventario.INV_LUGARDETENCION, INV_MODELO: @depositos_inventario.INV_MODELO, INV_MOTIVODETENCION: @depositos_inventario.INV_MOTIVODETENCION, INV_NOMOTOR: @depositos_inventario.INV_NOMOTOR, INV_NOSERIE: @depositos_inventario.INV_NOSERIE, INV_NUMORDEN: @depositos_inventario.INV_NUMORDEN, PKCOLOR: @depositos_inventario.PKCOLOR, PKDEPOSITO: @depositos_inventario.PKDEPOSITO, PKINVENTARIO: @depositos_inventario.PKINVENTARIO, PKMARCA: @depositos_inventario.PKMARCA, PKSUBMARCA: @depositos_inventario.PKSUBMARCA, PKTIPO_AUTO: @depositos_inventario.PKTIPO_AUTO } }
    assert_redirected_to depositos_inventario_url(@depositos_inventario)
  end

  test "should destroy depositos_inventario" do
    assert_difference('DepositosInventario.count', -1) do
      delete depositos_inventario_url(@depositos_inventario)
    end

    assert_redirected_to depositos_inventarios_url
  end
end
