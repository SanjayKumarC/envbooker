class AddStatusToRefreshRequests < ActiveRecord::Migration
  def change
    add_column :refresh_requests, :status, :string
  end
end
