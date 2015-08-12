class AddStatusRefToBookingRequest < ActiveRecord::Migration
  def up
    remove_column :booking_requests, :status
    add_reference :booking_requests, :status, index: true, foreign_key: true
  end
  def down
    remove_column :booking_requests, :status_id
    add_column :booking_requests, :status, :string
  end
end
