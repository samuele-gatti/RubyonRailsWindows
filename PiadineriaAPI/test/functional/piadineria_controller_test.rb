require 'test_helper'

class PiadineriaControllerTest < ActionController::TestCase
  setup do
    @piadinerium = piadineria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piadineria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piadinerium" do
    assert_difference('Piadinerium.count') do
      post :create, piadinerium: { comune: @piadinerium.comune, indirizzo: @piadinerium.indirizzo, latitudine: @piadinerium.latitudine, longitudine: @piadinerium.longitudine, provincia: @piadinerium.provincia, ragioneSociale: @piadinerium.ragioneSociale, regione: @piadinerium.regione }
    end

    assert_redirected_to piadinerium_path(assigns(:piadinerium))
  end

  test "should show piadinerium" do
    get :show, id: @piadinerium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piadinerium
    assert_response :success
  end

  test "should update piadinerium" do
    put :update, id: @piadinerium, piadinerium: { comune: @piadinerium.comune, indirizzo: @piadinerium.indirizzo, latitudine: @piadinerium.latitudine, longitudine: @piadinerium.longitudine, provincia: @piadinerium.provincia, ragioneSociale: @piadinerium.ragioneSociale, regione: @piadinerium.regione }
    assert_redirected_to piadinerium_path(assigns(:piadinerium))
  end

  test "should destroy piadinerium" do
    assert_difference('Piadinerium.count', -1) do
      delete :destroy, id: @piadinerium
    end

    assert_redirected_to piadineria_path
  end
end
