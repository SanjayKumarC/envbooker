require 'test_helper'

class DeletemesControllerTest < ActionController::TestCase
  setup do
    @deleteme = deletemes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deletemes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deleteme" do
    assert_difference('Deleteme.count') do
      post :create, deleteme: {  }
    end

    assert_redirected_to deleteme_path(assigns(:deleteme))
  end

  test "should show deleteme" do
    get :show, id: @deleteme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deleteme
    assert_response :success
  end

  test "should update deleteme" do
    patch :update, id: @deleteme, deleteme: {  }
    assert_redirected_to deleteme_path(assigns(:deleteme))
  end

  test "should destroy deleteme" do
    assert_difference('Deleteme.count', -1) do
      delete :destroy, id: @deleteme
    end

    assert_redirected_to deletemes_path
  end
end
