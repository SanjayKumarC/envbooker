class CreateRefreshRequests < ActiveRecord::Migration
  def change
    create_table :refresh_requests do |t|
      t.references :env, index: true, foreign_key: true
      t.references :app, index: true, foreign_key: true
      t.date :refresh_date
      t.string :notes
      t.timestamps null: false
    end
  end
end
