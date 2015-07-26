class RemoveTotalHoursFromUserPreferences < ActiveRecord::Migration
  def change
    remove_column :user_preferences, :total_hours
  end
end
