require 'test_helper'

class SystemsControllerTest < ActionController::TestCase

  include Devise::TestHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:systems)
  end

  test "should get edit" do
    xhr :get, :edit, id: 1
    assert_response :success
    assert_not_nil assigns(:system)
  end

  test "should get show" do
    xhr :get, :show, id: 1
    assert_response :success
    assert_not_nil assigns(:system)
  end

  test "should create" do
    xhr :post, :create, system: {
      env_id: 1,
      app_id: 1,
      refresh_date: nil
    }
    assert_response :success
  end
end
