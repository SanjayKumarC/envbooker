class AddTotalHoursToAppconfigs < ActiveRecord::Migration
  def change
    add_column :appconfigs, :total_hours, :integer
  end
end
