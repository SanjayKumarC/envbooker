class AddStatusToRefreshRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :refresh_requests, :status, :string
  end
end
