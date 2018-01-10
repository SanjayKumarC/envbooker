class ChangeStartDateColumInEnvbookings < ActiveRecord::Migration[5.1]
  def up
    change_column :envbookings, :start_date, :date
  end

  def down
    change_column :envbookings, :start_date, :datetime
  end
end
