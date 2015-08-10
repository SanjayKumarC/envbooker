require 'test_helper'

class BookingRequestsControllerTest < ActionController::TestCase

  include Devise::TestHelpers

  def setup
    @request.env["devise.mapping"] = Devise.mappings[:user]
    sign_in FactoryGirl.create(:user)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:booking_requests)
  end

  test "should get edit" do
    xhr :get, :edit, id: 1
    assert_response :success
    assert_not_nil assigns(:booking_request)
    assert_not_nil assigns(:statuses)
  end

  test "should get show" do
    xhr :get, :show, id: 1
    assert_response :success
    assert_not_nil assigns(:booking_request)
  end

  test "new" do
    xhr :get, :new
    assert_response :success
    assert_not_nil assigns(:booking_request)
  end

  test "create" do
    xhr :post, :create, booking_request: {
      notes: Forgery(:lorem_ipsum).words(10),
      user: "Joe Bloggs",
      status: "New",
      project: "Project 0",
      start_date: Date.today(),
      end_date: Date.today()
    }

    assert_response :success
  end

  test "fail to create with nil user" do
    xhr :post, :create, booking_request: {
      notes: Forgery(:lorem_ipsum).words(10),
      user: nil,
      status: 'New',
      project: 'Project 0',
      start_date: Date.today(),
      end_date: Date.today()
    }
    assert_response :redirect
  end

  test "fail to create with nil notes" do
    xhr :post, :create, booking_request: {
      notes: nil,
      user: "joe bloggs",
      status: 'New',
      project: 'Project 0',
      start_date: Date.today(),
      end_date: Date.today()
    }
    assert_response :redirect
  end
  
end
