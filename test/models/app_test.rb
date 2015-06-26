require 'test_helper'

class AppTest < ActiveSupport::TestCase

  test "Checks all presence is verified" do
    a = App.new
    assert_not a.save

    a = App.new
    a.name = "Test"
    assert_not a.save

    a = App.new
    a.name = "Test"
    a.description = "Test"
    assert_not a.save

    a = App.new
    a.name = "Test"
    a.description = "Test"
    a.color = "#ffffff"
    assert a.save
  end

  test "Won't save duplicates" do
    #This covers the normal add as well.
    a = App.new
    a.name = "Test"
    a.color = "#ffffff"
    a.description = "This is a test"
    assert a.save

    b = App.new
    assert_not b.save
    assert App.delete_all
  end

  test "invalid color" do
    a = App.new
    a.name = "Test"
    a.color = "#This is not a color"
    a.description = "This is a test"
    assert_not a.save
  end
end
