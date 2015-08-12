class CreateEnvproperties < ActiveRecord::Migration
  def change
    create_table :envproperties do |t|
      t.references :env
      t.string :key
      t.string :value
    end
    add_foreign_key :envproperties, :envs
    add_index :envproperties, [:env_id, :key], unique: true
  end
end
