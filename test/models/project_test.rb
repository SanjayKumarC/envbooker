require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  test "must have a name" do
    p = Project.new
    assert_not p.save
  end

  test "must have unique name" do
    pr = Project.first!
    p = Project.new
    p.name = pr.name
    p.description = "Test"
    assert_not p.save
  end

  test "must have a description" do
    p = Project.new
    p.name = "This is a unique name"
    assert_not p.save
  end

  test "cant delete if active" do
    booking = Envbooking.first!
    pr = Project.find(booking.project_id)
    assert_not pr.destroy
  end


  test "valid and works" do
    p = Project.new
    p.name = "Unique Name"
    p.description = "description"
    assert p.save
  end
end
