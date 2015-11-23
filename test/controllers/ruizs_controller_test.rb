require 'test_helper'

class RuizsControllerTest < ActionController::TestCase
  setup do
    @ruiz = ruizs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruizs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruiz" do
    assert_difference('Ruiz.count') do
      post :create, ruiz: { Cliente: @ruiz.Cliente, Direccion: @ruiz.Direccion, Fecha: @ruiz.Fecha, TotalFactura: @ruiz.TotalFactura }
    end

    assert_redirected_to ruiz_path(assigns(:ruiz))
  end

  test "should show ruiz" do
    get :show, id: @ruiz
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruiz
    assert_response :success
  end

  test "should update ruiz" do
    patch :update, id: @ruiz, ruiz: { Cliente: @ruiz.Cliente, Direccion: @ruiz.Direccion, Fecha: @ruiz.Fecha, TotalFactura: @ruiz.TotalFactura }
    assert_redirected_to ruiz_path(assigns(:ruiz))
  end

  test "should destroy ruiz" do
    assert_difference('Ruiz.count', -1) do
      delete :destroy, id: @ruiz
    end

    assert_redirected_to ruizs_path
  end
end
