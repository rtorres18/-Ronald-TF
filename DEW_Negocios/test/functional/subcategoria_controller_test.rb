require 'test_helper'

class SubcategoriaControllerTest < ActionController::TestCase
  setup do
    @subcategorium = subcategoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subcategoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subcategorium" do
    assert_difference('Subcategorium.count') do
      post :create, subcategorium: { codcategoria: @subcategorium.codcategoria, codsubcategoria: @subcategorium.codsubcategoria, nombresubcategoria: @subcategorium.nombresubcategoria }
    end

    assert_redirected_to subcategorium_path(assigns(:subcategorium))
  end

  test "should show subcategorium" do
    get :show, id: @subcategorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subcategorium
    assert_response :success
  end

  test "should update subcategorium" do
    put :update, id: @subcategorium, subcategorium: { codcategoria: @subcategorium.codcategoria, codsubcategoria: @subcategorium.codsubcategoria, nombresubcategoria: @subcategorium.nombresubcategoria }
    assert_redirected_to subcategorium_path(assigns(:subcategorium))
  end

  test "should destroy subcategorium" do
    assert_difference('Subcategorium.count', -1) do
      delete :destroy, id: @subcategorium
    end

    assert_redirected_to subcategoria_path
  end
end
