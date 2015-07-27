class AddSidebarOptionToAppconfigs < ActiveRecord::Migration
  def change
    add_column :appconfigs, :sidebar, :boolean, :default => false
  end
end
