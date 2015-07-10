class AddTextColorToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :text_color, :string
  end
end
