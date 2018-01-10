class CreateAppconfigs < ActiveRecord::Migration[5.1]
  def change
    create_table :appconfigs do |t|
      t.integer :singleton_guard
      t.string :template

      t.timestamps null: false
    end
    add_index(:appconfigs, :singleton_guard, :unique => true)
  end
end
