require 'test_helper'

class EnvlevelsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  include Warden::Test::Helpers   
                     
  Warden.test_mode!                                    

  def teardown                                         
    Warden.test_reset!                                 
  end 

  setup do
    @envlevel = envlevels(:one, :two)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envlevels)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envlevel" do
    assert_difference('Envlevel.count') do
      post :create, envlevel: { name: @envlevel.name }
    end

    assert_redirected_to envlevel_path(assigns(:envlevel))
  end

  test "should show envlevel" do
    get :show, id: @envlevel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envlevel
    assert_response :success
  end

  test "should update envlevel" do
    patch :update, id: @envlevel, envlevel: { name: @envlevel.name }
    assert_redirected_to envlevel_path(assigns(:envlevel))
  end

  test "should destroy envlevel" do
    assert_difference('Envlevel.count', -1) do
      delete :destroy, id: @envlevel
    end

    assert_redirected_to envlevels_path
  end
end
