class AddUserToBookingRequest < ActiveRecord::Migration
  def change
    add_column :booking_requests, :user, :string
  end
end
