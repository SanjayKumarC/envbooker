class AddLastRefreshDateToEnvs < ActiveRecord::Migration
  def change
    add_column :envs, :last_refresh_date, :date
  end
end
