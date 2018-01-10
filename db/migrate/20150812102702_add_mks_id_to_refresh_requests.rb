class AddMksIdToRefreshRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :refresh_requests, :mks_id, :string
  end
end
