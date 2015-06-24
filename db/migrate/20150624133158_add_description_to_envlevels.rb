class AddDescriptionToEnvlevels < ActiveRecord::Migration
  def change
    add_column :envlevels, :description, :string
  end
end
