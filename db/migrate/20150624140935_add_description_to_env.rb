class AddDescriptionToEnv < ActiveRecord::Migration
  def change
    add_column :envs, :description, :string
  end
end
