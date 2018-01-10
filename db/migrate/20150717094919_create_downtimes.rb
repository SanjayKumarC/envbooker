class CreateDowntimes < ActiveRecord::Migration[5.1]
  def change
    create_table :downtimes do |t|
      t.references :env, index: true
      t.integer :hours
      t.string :reason

      t.timestamps null: false
    end
    add_foreign_key :downtimes, :envs
  end
end
