require 'test_helper'

class VisitaControllerTest < ActionController::TestCase
  setup do
    @visitum = visita(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:visita)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create visitum" do
    assert_difference('Visitum.count') do
      post :create, visitum: { conjunto: @visitum.conjunto, dataEntrada: @visitum.dataEntrada, dataSaida: @visitum.dataSaida, responsavel: @visitum.responsavel, visitante_id: @visitum.visitante_id }
    end

    assert_redirected_to visitum_path(assigns(:visitum))
  end

  test "should show visitum" do
    get :show, id: @visitum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @visitum
    assert_response :success
  end

  test "should update visitum" do
    patch :update, id: @visitum, visitum: { conjunto: @visitum.conjunto, dataEntrada: @visitum.dataEntrada, dataSaida: @visitum.dataSaida, responsavel: @visitum.responsavel, visitante_id: @visitum.visitante_id }
    assert_redirected_to visitum_path(assigns(:visitum))
  end

  test "should destroy visitum" do
    assert_difference('Visitum.count', -1) do
      delete :destroy, id: @visitum
    end

    assert_redirected_to visita_path
  end
end
