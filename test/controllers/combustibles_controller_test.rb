require 'test_helper'

class CombustiblesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @combustible = combustibles(:one)
  end

  test "should get index" do
    get combustibles_url
    assert_response :success
  end

  test "should get new" do
    get new_combustible_url
    assert_response :success
  end

  test "should create combustible" do
    assert_difference('Combustible.count') do
      post combustibles_url, params: { combustible: { COM_DESCRIPCION: @combustible.COM_DESCRIPCION, COM_FFIN: @combustible.COM_FFIN, COM_FINICIO: @combustible.COM_FINICIO, COM_PRECIO: @combustible.COM_PRECIO, PKCOMBUSTIBLE: @combustible.PKCOMBUSTIBLE } }
    end

    assert_redirected_to combustible_url(Combustible.last)
  end

  test "should show combustible" do
    get combustible_url(@combustible)
    assert_response :success
  end

  test "should get edit" do
    get edit_combustible_url(@combustible)
    assert_response :success
  end

  test "should update combustible" do
    patch combustible_url(@combustible), params: { combustible: { COM_DESCRIPCION: @combustible.COM_DESCRIPCION, COM_FFIN: @combustible.COM_FFIN, COM_FINICIO: @combustible.COM_FINICIO, COM_PRECIO: @combustible.COM_PRECIO, PKCOMBUSTIBLE: @combustible.PKCOMBUSTIBLE } }
    assert_redirected_to combustible_url(@combustible)
  end

  test "should destroy combustible" do
    assert_difference('Combustible.count', -1) do
      delete combustible_url(@combustible)
    end

    assert_redirected_to combustibles_url
  end
end
