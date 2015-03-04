require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  include Devise::TestHelpers
  include Warden::Test::Helpers   
                     
  Warden.test_mode!                                    

  def teardown                                         
    Warden.test_reset!                                 
  end 

end
