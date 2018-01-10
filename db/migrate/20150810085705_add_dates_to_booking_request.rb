class AddDatesToBookingRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_requests, :start_date, :date
    add_column :booking_requests, :end_date, :date
  end
end
