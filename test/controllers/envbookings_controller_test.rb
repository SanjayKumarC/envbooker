require 'test_helper'

class EnvbookingsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  include Warden::Test::Helpers   
                     
  Warden.test_mode!                                    

  def teardown                                         
    Warden.test_reset!                                 
  end 

  setup do
    @envbooking = envbookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envbookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envbooking" do
    assert_difference('Envbooking.count') do
      post :create, envbooking: { end_date: @envbooking.end_date, env_id: Env.find_by_name('MyString1'), project_id: Project.find_by_name('MyString1'), start_date: @envbooking.start_date }
    end

    assert_redirected_to envbooking_path(assigns(:envbooking))
  end

  test "should show envbooking" do
    get :show, id: @envbooking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envbooking
    assert_response :success
  end

  test "should update envbooking" do
    patch :update, id: @envbooking, envbooking: { end_date: @envbooking.end_date, env_id: Env.find_by_name('MyString1'), project_id: Project.find_by_name('MyString1'), start_date: @envbooking.start_date }
    assert_redirected_to envbooking_path(assigns(:envbooking))
  end

  test "should destroy envbooking" do
    assert_difference('Envbooking.count', -1) do
      delete :destroy, id: @envbooking
    end

    assert_redirected_to envbookings_path
  end
end
