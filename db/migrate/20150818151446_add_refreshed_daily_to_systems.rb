class AddRefreshedDailyToSystems < ActiveRecord::Migration[5.1]
  def change
    add_column :systems, :refreshed_daily, :boolean, :default => false
  end
end
