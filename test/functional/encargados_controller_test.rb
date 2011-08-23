require 'test_helper'

class EncargadosControllerTest < ActionController::TestCase
  setup do
    @encargado = encargados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:encargados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create encargado" do
    assert_difference('Encargado.count') do
      post :create, :encargado => @encargado.attributes
    end

    assert_redirected_to encargado_path(assigns(:encargado))
  end

  test "should show encargado" do
    get :show, :id => @encargado.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @encargado.to_param
    assert_response :success
  end

  test "should update encargado" do
    put :update, :id => @encargado.to_param, :encargado => @encargado.attributes
    assert_redirected_to encargado_path(assigns(:encargado))
  end

  test "should destroy encargado" do
    assert_difference('Encargado.count', -1) do
      delete :destroy, :id => @encargado.to_param
    end

    assert_redirected_to encargados_path
  end
end
