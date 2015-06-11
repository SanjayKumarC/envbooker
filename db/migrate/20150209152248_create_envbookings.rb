class CreateEnvbookings < ActiveRecord::Migration
  def change
    create_table :envbookings do |t|
      t.references :env, index: true
      t.references :project, index: true
      t.references :user
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
    add_foreign_key :envbookings, :envs
    add_foreign_key :envbookings, :projects
  end
end
