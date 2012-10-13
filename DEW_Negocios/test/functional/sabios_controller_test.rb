require 'test_helper'

class SabiosControllerTest < ActionController::TestCase
  setup do
    @sabio = sabios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sabios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sabio" do
    assert_difference('Sabio.count') do
      post :create, sabio: { apematerno: @sabio.apematerno, apepaterno: @sabio.apepaterno, celular: @sabio.celular, codemprendedor: @sabio.codemprendedor, direccion: @sabio.direccion, email: @sabio.email, fecnac: @sabio.fecnac, nombres: @sabio.nombres, numerodi: @sabio.numerodi, password: @sabio.password, sexo: @sabio.sexo, tipodi: @sabio.tipodi }
    end

    assert_redirected_to sabio_path(assigns(:sabio))
  end

  test "should show sabio" do
    get :show, id: @sabio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sabio
    assert_response :success
  end

  test "should update sabio" do
    put :update, id: @sabio, sabio: { apematerno: @sabio.apematerno, apepaterno: @sabio.apepaterno, celular: @sabio.celular, codemprendedor: @sabio.codemprendedor, direccion: @sabio.direccion, email: @sabio.email, fecnac: @sabio.fecnac, nombres: @sabio.nombres, numerodi: @sabio.numerodi, password: @sabio.password, sexo: @sabio.sexo, tipodi: @sabio.tipodi }
    assert_redirected_to sabio_path(assigns(:sabio))
  end

  test "should destroy sabio" do
    assert_difference('Sabio.count', -1) do
      delete :destroy, id: @sabio
    end

    assert_redirected_to sabios_path
  end
end
