class AddIndexToEnbookings < ActiveRecord::Migration
  def up
    add_index(:envbookings, [:env_id, :project_id, :start_date, :end_date], unique: true, name: "index_envbookings_env_project_start_date_end_date")
  end
  def down
    remove_index(:envbookings, name: "index_envbookings_env_project_start_date_end_date")
  end
end
