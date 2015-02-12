class CreateEnvlevels < ActiveRecord::Migration
  def change
    create_table :envlevels do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
