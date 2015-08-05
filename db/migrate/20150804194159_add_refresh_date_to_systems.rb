class AddRefreshDateToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :refresh_date, :date
  end
end
