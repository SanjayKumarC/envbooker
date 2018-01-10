class CreateSystemProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :system_properties do |t|
      t.references :system, index: true, foreign_key: true
      t.string :key
      t.string :value
      t.timestamps null: false
    end
  end
end
