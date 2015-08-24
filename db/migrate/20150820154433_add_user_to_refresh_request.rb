class AddUserToRefreshRequest < ActiveRecord::Migration
  def change
    add_reference :refresh_requests, :user, index: true, foreign_key: true
  end
end
