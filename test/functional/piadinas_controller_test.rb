require 'test_helper'

class PiadinasControllerTest < ActionController::TestCase
  setup do
    @piadina = piadinas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piadinas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piadina" do
    assert_difference('Piadina.count') do
      post :create, piadina: { descrizione: @piadina.descrizione, ingredienti: @piadina.ingredienti, link: @piadina.link, nome: @piadina.nome, prezzo: @piadina.prezzo }
    end

    assert_redirected_to piadina_path(assigns(:piadina))
  end

  test "should show piadina" do
    get :show, id: @piadina
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @piadina
    assert_response :success
  end

  test "should update piadina" do
    put :update, id: @piadina, piadina: { descrizione: @piadina.descrizione, ingredienti: @piadina.ingredienti, link: @piadina.link, nome: @piadina.nome, prezzo: @piadina.prezzo }
    assert_redirected_to piadina_path(assigns(:piadina))
  end

  test "should destroy piadina" do
    assert_difference('Piadina.count', -1) do
      delete :destroy, id: @piadina
    end

    assert_redirected_to piadinas_path
  end
end
