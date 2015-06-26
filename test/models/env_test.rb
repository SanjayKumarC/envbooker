require 'test_helper'

class EnvTest < ActiveSupport::TestCase
  test "Unique" do
    e = Env.new
    e.name = "DEV1"
    e.description = "Test"
    e.envlevel_id = Envlevel.first!
    assert_not e.save
  end

  test "missing name" do
    e = Env.new
    e.description = "Test"
    e.envlevel_id = Envlevel.first!
    assert_not e.save
  end

  test "missing description" do
    e = Env.new
    e.name = "Test"
    e.envlevel_id = Envlevel.first!
    assert_not e.save
  end

  test "missing envlevel" do
    e = Env.new
    e.name = "Test"
    e.description = "Test"
    assert_not e.save
  end

  test "invalid envlevel" do
    found = false
    while !found
      begin
        id = rand(100000)
        el = Envlevel.find(id)
      rescue ActiveRecord::RecordNotFound
        found = true
      end
    end

    e = Env.new
    e.name = "Test"
    e.description = "Test"
    begin
      e.envlevel = id #Model validation happens on assign not save.
    rescue
      return true
    end
    return false
  end

  test "cannot_delete" do
    booking = Envbooking.first!
    e = Env.find(booking.env_id)
    assert_not e.destroy
  end

  test "valid and works" do
    e = Env.new
    e.name = "Test"
    e.description = "description"
    e.envlevel_id = Envlevel.first!
    assert_not e.save
  end
end
