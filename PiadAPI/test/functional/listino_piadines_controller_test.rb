require 'test_helper'

class ListinoPiadinesControllerTest < ActionController::TestCase
  setup do
    @listino_piadine = listino_piadines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listino_piadines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listino_piadine" do
    assert_difference('ListinoPiadine.count') do
      post :create, listino_piadine: { piadineria_id: @listino_piadine.piadineria_id }
    end

    assert_redirected_to listino_piadine_path(assigns(:listino_piadine))
  end

  test "should show listino_piadine" do
    get :show, id: @listino_piadine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listino_piadine
    assert_response :success
  end

  test "should update listino_piadine" do
    put :update, id: @listino_piadine, listino_piadine: { piadineria_id: @listino_piadine.piadineria_id }
    assert_redirected_to listino_piadine_path(assigns(:listino_piadine))
  end

  test "should destroy listino_piadine" do
    assert_difference('ListinoPiadine.count', -1) do
      delete :destroy, id: @listino_piadine
    end

    assert_redirected_to listino_piadines_path
  end
end
