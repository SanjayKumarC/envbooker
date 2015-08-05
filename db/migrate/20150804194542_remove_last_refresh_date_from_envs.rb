class RemoveLastRefreshDateFromEnvs < ActiveRecord::Migration
  def up
    remove_column :envs, :last_refresh_date
  end
  def down
    add_column :envs, :last_refresh_date, :date
  end
end
