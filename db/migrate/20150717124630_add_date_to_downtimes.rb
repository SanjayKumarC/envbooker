class AddDateToDowntimes < ActiveRecord::Migration
  def change
    add_column :downtimes, :date, :date
  end
end
