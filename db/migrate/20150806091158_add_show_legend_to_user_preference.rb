class AddShowLegendToUserPreference < ActiveRecord::Migration
  def change
    add_column :user_preferences, :show_legend, :boolean, :default => false
    add_column :appconfigs, :show_legend, :boolean, :default => false
  end
end
