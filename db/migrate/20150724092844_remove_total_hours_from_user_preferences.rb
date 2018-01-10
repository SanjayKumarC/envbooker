class RemoveTotalHoursFromUserPreferences < ActiveRecord::Migration[5.1]
  def change
    remove_column :user_preferences, :total_hours
  end
end
