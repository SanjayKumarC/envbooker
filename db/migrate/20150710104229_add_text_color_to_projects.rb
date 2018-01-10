class AddTextColorToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :text_color, :string
  end
end
