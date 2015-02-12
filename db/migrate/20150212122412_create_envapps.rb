class CreateEnvapps < ActiveRecord::Migration
  def change
    create_table :envapps do |t|
      t.references :env, index: true
      t.references :app, index: true

      t.timestamps null: false
    end
    add_foreign_key :envapps, :envs
    add_foreign_key :envapps, :apps
  end
end
