require 'test_helper'

class EnvlevelTest < ActiveSupport::TestCase

  test "must have a name" do
    el = Envlevel.new
    assert_not el.save
  end

  test "must have unique name" do
    el = Envlevel.new
    el.name = "DEV"
    el.description = "Test"
    assert_not el.save
  end

  test "must have a description" do
    el = Envlevel.new
    el.name = "This is a unique name"
    assert_not el.save
  end

  test "valid and works" do
    el = Envlevel.new
    el.name = "Unique Name"
    el.description = "description"
    assert el.save
  end

  test "cant delete active levels" do
    e = Env.first!
    el = Envlevel.find(e.envlevel_id)
    assert_not el.destroy
  end
end
