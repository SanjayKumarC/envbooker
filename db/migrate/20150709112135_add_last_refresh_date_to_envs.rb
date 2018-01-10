class AddLastRefreshDateToEnvs < ActiveRecord::Migration[5.1]
  def change
    add_column :envs, :last_refresh_date, :date
  end
end
