class AddColorByToAppconfig < ActiveRecord::Migration[5.1]
  def change
    add_column :appconfigs, :color_by_project, :boolean, :null => false, :default => false
  end
end
