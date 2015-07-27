class AddSidebarOptionToUserPreferences < ActiveRecord::Migration
  def change
    add_column :user_preferences, :sidebar, :boolean, :default => false
  end
end
