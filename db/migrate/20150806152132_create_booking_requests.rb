class CreateBookingRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :booking_requests do |t|
      t.string :notes
      t.string :status
      t.timestamps null: false
    end
  end
end
