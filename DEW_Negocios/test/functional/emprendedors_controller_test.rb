require 'test_helper'

class EmprendedorsControllerTest < ActionController::TestCase
  setup do
    @emprendedor = emprendedors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emprendedors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emprendedor" do
    assert_difference('Emprendedor.count') do
      post :create, emprendedor: { apelativo: @emprendedor.apelativo, apematerno: @emprendedor.apematerno, apepaterno: @emprendedor.apepaterno, autobigrafia: @emprendedor.autobigrafia, celular: @emprendedor.celular, codsabio: @emprendedor.codsabio, ctabancaria: @emprendedor.ctabancaria, direccion: @emprendedor.direccion, email: @emprendedor.email, fecnac: @emprendedor.fecnac, nombres: @emprendedor.nombres, numerodi: @emprendedor.numerodi, password: @emprendedor.password, sexo: @emprendedor.sexo, tipodi: @emprendedor.tipodi, web: @emprendedor.web }
    end

    assert_redirected_to emprendedor_path(assigns(:emprendedor))
  end

  test "should show emprendedor" do
    get :show, id: @emprendedor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emprendedor
    assert_response :success
  end

  test "should update emprendedor" do
    put :update, id: @emprendedor, emprendedor: { apelativo: @emprendedor.apelativo, apematerno: @emprendedor.apematerno, apepaterno: @emprendedor.apepaterno, autobigrafia: @emprendedor.autobigrafia, celular: @emprendedor.celular, codsabio: @emprendedor.codsabio, ctabancaria: @emprendedor.ctabancaria, direccion: @emprendedor.direccion, email: @emprendedor.email, fecnac: @emprendedor.fecnac, nombres: @emprendedor.nombres, numerodi: @emprendedor.numerodi, password: @emprendedor.password, sexo: @emprendedor.sexo, tipodi: @emprendedor.tipodi, web: @emprendedor.web }
    assert_redirected_to emprendedor_path(assigns(:emprendedor))
  end

  test "should destroy emprendedor" do
    assert_difference('Emprendedor.count', -1) do
      delete :destroy, id: @emprendedor
    end

    assert_redirected_to emprendedors_path
  end
end
