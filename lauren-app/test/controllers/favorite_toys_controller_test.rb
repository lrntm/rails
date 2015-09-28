require 'test_helper'

class FavoriteToysControllerTest < ActionController::TestCase
  setup do
    @favorite_toy = favorite_toys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:favorite_toys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create favorite_toy" do
    assert_difference('FavoriteToy.count') do
      post :create, favorite_toy: { name: @favorite_toy.name, type: @favorite_toy.type }
    end

    assert_redirected_to favorite_toy_path(assigns(:favorite_toy))
  end

  test "should show favorite_toy" do
    get :show, id: @favorite_toy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @favorite_toy
    assert_response :success
  end

  test "should update favorite_toy" do
    patch :update, id: @favorite_toy, favorite_toy: { name: @favorite_toy.name, type: @favorite_toy.type }
    assert_redirected_to favorite_toy_path(assigns(:favorite_toy))
  end

  test "should destroy favorite_toy" do
    assert_difference('FavoriteToy.count', -1) do
      delete :destroy, id: @favorite_toy
    end

    assert_redirected_to favorite_toys_path
  end
end
