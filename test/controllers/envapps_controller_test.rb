require 'test_helper'

class EnvappsControllerTest < ActionController::TestCase
  setup do
    @envapp = envapps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envapps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envapp" do
    assert_difference('Envapp.count') do
      post :create, envapp: { app_id: @envapp.app_id, env_id: @envapp.env_id }
    end

    assert_redirected_to envapp_path(assigns(:envapp))
  end

  test "should show envapp" do
    get :show, id: @envapp
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envapp
    assert_response :success
  end

  test "should update envapp" do
    patch :update, id: @envapp, envapp: { app_id: @envapp.app_id, env_id: @envapp.env_id }
    assert_redirected_to envapp_path(assigns(:envapp))
  end

  test "should destroy envapp" do
    assert_difference('Envapp.count', -1) do
      delete :destroy, id: @envapp
    end

    assert_redirected_to envapps_path
  end
end
