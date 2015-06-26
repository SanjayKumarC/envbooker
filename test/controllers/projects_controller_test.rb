require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  include Warden::Test::Helpers

  Warden.test_mode!

  def teardown
    Warden.test_reset!
  end

  setup do
    @project = projects(:one, :two)
  end
end
