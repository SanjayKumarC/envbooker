class AddColorByToAppconfig < ActiveRecord::Migration
  def change
    add_column :appconfigs, :color_by_project, :boolean, :null => false, :default => false
  end
end
