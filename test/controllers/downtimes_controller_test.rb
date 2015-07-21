require 'test_helper'

class DowntimesControllerTest < ActionController::TestCase
  setup do
    @downtime = downtimes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:downtimes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create downtime" do
    assert_difference('Downtime.count') do
      post :create, downtime: { env_id: @downtime.env_id, hours: @downtime.hours, reason: @downtime.reason }
    end

    assert_redirected_to downtime_path(assigns(:downtime))
  end

  test "should show downtime" do
    get :show, id: @downtime
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @downtime
    assert_response :success
  end

  test "should update downtime" do
    patch :update, id: @downtime, downtime: { env_id: @downtime.env_id, hours: @downtime.hours, reason: @downtime.reason }
    assert_redirected_to downtime_path(assigns(:downtime))
  end

  test "should destroy downtime" do
    assert_difference('Downtime.count', -1) do
      delete :destroy, id: @downtime
    end

    assert_redirected_to downtimes_path
  end
end
