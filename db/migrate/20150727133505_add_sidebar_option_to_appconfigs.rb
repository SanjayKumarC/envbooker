class AddSidebarOptionToAppconfigs < ActiveRecord::Migration[5.1]
  def change
    add_column :appconfigs, :sidebar, :boolean, :default => false
  end
end
