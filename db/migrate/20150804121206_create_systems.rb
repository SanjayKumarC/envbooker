class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems, :id => false do |t|
      t.references :env, index: true, foreign_key: true
      t.references :app, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
