class AddUserToBookingRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_requests, :user, :string
  end
end
