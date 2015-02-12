class CreateEnvs < ActiveRecord::Migration
  def change
    create_table :envs do |t|
      t.string :name
      t.references :envlevel, index: true

      t.timestamps null: false
    end
    add_foreign_key :envs, :envlevels
  end
end
