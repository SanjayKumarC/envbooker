class CreateSystems < ActiveRecord::Migration[5.1]
  def change
    create_table :systems do |t|
      t.references :env, index: true, foreign_key: true
      t.references :app, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
