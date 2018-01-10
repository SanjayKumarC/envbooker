class AddDescriptionToEnvlevels < ActiveRecord::Migration[5.1]
  def change
    add_column :envlevels, :description, :string
  end
end
