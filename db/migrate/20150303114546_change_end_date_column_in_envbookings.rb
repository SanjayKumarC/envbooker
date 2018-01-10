class ChangeEndDateColumnInEnvbookings < ActiveRecord::Migration[5.1]
  def up
    change_column :envbookings, :end_date, :date
  end
  def down
    change_column :envbookings, :end_date, :datetime
  end
end
