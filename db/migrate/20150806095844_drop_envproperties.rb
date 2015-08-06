class DropEnvproperties < ActiveRecord::Migration

  def up
    drop_table :envproperties
  end

  def down
    create_table :envproperties do |t|
      t.references :env
      t.string :key
      t.string :value
    end
    add_foreign_key :envproperties, :env_ids
    add_index :envproperties, [:env_id, :key], unique: true
  end
end
