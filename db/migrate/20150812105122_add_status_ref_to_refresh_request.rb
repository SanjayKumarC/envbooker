class AddStatusRefToRefreshRequest < ActiveRecord::Migration
  def up
    remove_column :refresh_requests, :status
    add_reference :refresh_requests, :status, index: true, foreign_key: true
  end
  
  def down
    remove_column :refresh_requests, :status_id
    add_column :refresh_requests, :status, :string
  end
end
