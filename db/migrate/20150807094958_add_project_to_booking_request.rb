class AddProjectToBookingRequest < ActiveRecord::Migration[5.1]
  def change
    add_column :booking_requests, :project, :string
  end
end
