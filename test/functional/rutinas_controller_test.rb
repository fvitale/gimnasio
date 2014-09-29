require 'test_helper'

class RutinasControllerTest < ActionController::TestCase
  setup do
    @rutina = rutinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rutinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rutina" do
    assert_difference('Rutina.count') do
      post :create, rutina: { nombre: @rutina.nombre, puntos: @rutina.puntos }
    end

    assert_redirected_to rutina_path(assigns(:rutina))
  end

  test "should show rutina" do
    get :show, id: @rutina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rutina
    assert_response :success
  end

  test "should update rutina" do
    put :update, id: @rutina, rutina: { nombre: @rutina.nombre, puntos: @rutina.puntos }
    assert_redirected_to rutina_path(assigns(:rutina))
  end

  test "should destroy rutina" do
    assert_difference('Rutina.count', -1) do
      delete :destroy, id: @rutina
    end

    assert_redirected_to rutinas_path
  end
end
