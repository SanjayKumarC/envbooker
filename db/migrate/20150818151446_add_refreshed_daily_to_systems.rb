class AddRefreshedDailyToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :refreshed_daily, :boolean, :default => false
  end
end
