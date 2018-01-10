class AddDescriptionToEnv < ActiveRecord::Migration[5.1]
  def change
    add_column :envs, :description, :string
  end
end
