class AddTotalHoursToAppconfigs < ActiveRecord::Migration[5.1]
  def change
    add_column :appconfigs, :total_hours, :integer
  end
end
