class AddDateToDowntimes < ActiveRecord::Migration[5.1]
  def change
    add_column :downtimes, :date, :date
  end
end
