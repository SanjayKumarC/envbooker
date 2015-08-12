class AddMksIdToRefreshRequests < ActiveRecord::Migration
  def change
    add_column :refresh_requests, :mks_id, :string
  end
end
