class AddSidebarOptionToUserPreferences < ActiveRecord::Migration[5.1]
  def change
    add_column :user_preferences, :sidebar, :boolean, :default => false
  end
end
