require 'test_helper'

class EnvbookingTest < ActiveSupport::TestCase
#   validates :start_date, presence: true
#   validates :end_date, presence: true
#   validates :user, presence: true
#   validates :env, presence: true
#   validates :project, presence: true
#   validates :app, presence: true
#
# end date > start date

  test "presence of app" do
    booking = Envbooking.new
    booking.user = User.first!
    booking.env = Env.first!
    booking.project = Project.first!
    booking.start_date = Date.today
    booking.end_date = Date.today
    assert_not booking.save
  end

  test "presence of project" do
    booking = Envbooking.new
    booking.user = User.first!
    booking.env = Env.first!
    booking.app = App.first!
    booking.start_date = Date.today
    booking.end_date = Date.today
    assert_not booking.save
  end

  test "presence of user" do
    booking = Envbooking.new
    booking.project = Project.first!
    booking.env = Env.first!
    booking.app = App.first!
    booking.start_date = Date.today
    booking.end_date = Date.today
    assert_not booking.save
  end

  test "presence of env" do
    booking = Envbooking.new
    booking.project = Project.first!
    booking.user = User.first!
    booking.app = App.first!
    booking.start_date = Date.today
    booking.end_date = Date.today
    assert_not booking.save
  end

  test "presence of start date" do
    booking = Envbooking.new
    booking.project = Project.first!
    booking.env = Env.first!
    booking.app = App.first!
    booking.app = App.first!
    booking.end_date = Date.today
    assert_not booking.save
  end
  test "presence of end date" do
    booking = Envbooking.new
    booking.project = Project.first!
    booking.env = Env.first!
    booking.app = App.first!
    booking.app = App.first!
    booking.start_date = Date.today
    assert_not booking.save
  end

  test "end date before start date" do
    booking = Envbooking.new
    booking.project = Project.first!
    booking.env = Env.first!
    booking.app = App.first!
    booking.app = App.first!
    booking.start_date = Date.today
    booking.end_date = Date.today-10
    assert_not booking.save
  end

  test "valid and works" do
    booking = Envbooking.new
    booking.project = Project.first!
    booking.env = Env.first!
    booking.app = App.first!
    booking.app = App.first!
    booking.start_date = Date.today
    booking.end_date = Date.today
    assert_not booking.save
  end
end
