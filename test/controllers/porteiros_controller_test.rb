require 'test_helper'

class PorteirosControllerTest < ActionController::TestCase
  setup do
    @porteiro = porteiros(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:porteiros)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create porteiro" do
    assert_difference('Porteiro.count') do
      post :create, porteiro: { cpf: @porteiro.cpf, nome: @porteiro.nome, rg: @porteiro.rg, telefone: @porteiro.telefone }
    end

    assert_redirected_to porteiro_path(assigns(:porteiro))
  end

  test "should show porteiro" do
    get :show, id: @porteiro
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @porteiro
    assert_response :success
  end

  test "should update porteiro" do
    patch :update, id: @porteiro, porteiro: { cpf: @porteiro.cpf, nome: @porteiro.nome, rg: @porteiro.rg, telefone: @porteiro.telefone }
    assert_redirected_to porteiro_path(assigns(:porteiro))
  end

  test "should destroy porteiro" do
    assert_difference('Porteiro.count', -1) do
      delete :destroy, id: @porteiro
    end

    assert_redirected_to porteiros_path
  end
end
