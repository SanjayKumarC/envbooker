class AddRefreshDateToSystems < ActiveRecord::Migration[5.1]
  def change
    add_column :systems, :refresh_date, :date
  end
end
