class AddProjectToBookingRequest < ActiveRecord::Migration
  def change
    add_column :booking_requests, :project, :string
  end
end
