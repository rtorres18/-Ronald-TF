require 'test_helper'

class PlannegociosControllerTest < ActionController::TestCase
  setup do
    @plannegocio = plannegocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plannegocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plannegocio" do
    assert_difference('Plannegocio.count') do
      post :create, plannegocio: { codcategoria: @plannegocio.codcategoria, codemprendedor: @plannegocio.codemprendedor, codplan: @plannegocio.codplan, codsabio: @plannegocio.codsabio, codsubcategoria: @plannegocio.codsubcategoria, inversiontotal: @plannegocio.inversiontotal, linkdocumento: @plannegocio.linkdocumento, margenneto: @plannegocio.margenneto, mensajerechazo: @plannegocio.mensajerechazo, precioventa: @plannegocio.precioventa, razonamiento: @plannegocio.razonamiento, roi: @plannegocio.roi, tiempoejecucionano: @plannegocio.tiempoejecucionano, tiempoejecuciondia: @plannegocio.tiempoejecuciondia, tiempoejecucionmes: @plannegocio.tiempoejecucionmes, tituloplan: @plannegocio.tituloplan, validadoplan: @plannegocio.validadoplan, vision: @plannegocio.vision }
    end

    assert_redirected_to plannegocio_path(assigns(:plannegocio))
  end

  test "should show plannegocio" do
    get :show, id: @plannegocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plannegocio
    assert_response :success
  end

  test "should update plannegocio" do
    put :update, id: @plannegocio, plannegocio: { codcategoria: @plannegocio.codcategoria, codemprendedor: @plannegocio.codemprendedor, codplan: @plannegocio.codplan, codsabio: @plannegocio.codsabio, codsubcategoria: @plannegocio.codsubcategoria, inversiontotal: @plannegocio.inversiontotal, linkdocumento: @plannegocio.linkdocumento, margenneto: @plannegocio.margenneto, mensajerechazo: @plannegocio.mensajerechazo, precioventa: @plannegocio.precioventa, razonamiento: @plannegocio.razonamiento, roi: @plannegocio.roi, tiempoejecucionano: @plannegocio.tiempoejecucionano, tiempoejecuciondia: @plannegocio.tiempoejecuciondia, tiempoejecucionmes: @plannegocio.tiempoejecucionmes, tituloplan: @plannegocio.tituloplan, validadoplan: @plannegocio.validadoplan, vision: @plannegocio.vision }
    assert_redirected_to plannegocio_path(assigns(:plannegocio))
  end

  test "should destroy plannegocio" do
    assert_difference('Plannegocio.count', -1) do
      delete :destroy, id: @plannegocio
    end

    assert_redirected_to plannegocios_path
  end
end
