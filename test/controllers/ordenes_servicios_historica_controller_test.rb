require 'test_helper'

class OrdenesServiciosHistoricaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ordenes_servicios_historica_index_url
    assert_response :success
  end

  test "should get show" do
    get ordenes_servicios_historica_show_url
    assert_response :success
  end

end
