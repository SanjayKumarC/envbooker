class RemoveLastRefreshDateFromEnvs < ActiveRecord::Migration[5.1]
  def up
    remove_column :envs, :last_refresh_date
  end
  def down
    add_column :envs, :last_refresh_date, :date
  end
end
