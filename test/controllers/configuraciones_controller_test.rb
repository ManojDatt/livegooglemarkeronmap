require 'test_helper'

class ConfiguracionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @configuracione = configuraciones(:one)
  end

  test "should get index" do
    get configuraciones_url
    assert_response :success
  end

  test "should get new" do
    get new_configuracione_url
    assert_response :success
  end

  test "should create configuracione" do
    assert_difference('Configuracione.count') do
      post configuraciones_url, params: { configuracione: { Descripcion: @configuracione.Descripcion, Llave: @configuracione.Llave, Valor: @configuracione.Valor } }
    end

    assert_redirected_to configuracione_url(Configuracione.last)
  end

  test "should show configuracione" do
    get configuracione_url(@configuracione)
    assert_response :success
  end

  test "should get edit" do
    get edit_configuracione_url(@configuracione)
    assert_response :success
  end

  test "should update configuracione" do
    patch configuracione_url(@configuracione), params: { configuracione: { Descripcion: @configuracione.Descripcion, Llave: @configuracione.Llave, Valor: @configuracione.Valor } }
    assert_redirected_to configuracione_url(@configuracione)
  end

  test "should destroy configuracione" do
    assert_difference('Configuracione.count', -1) do
      delete configuracione_url(@configuracione)
    end

    assert_redirected_to configuraciones_url
  end
end
