class AddColorToApp < ActiveRecord::Migration
  def change
    add_column :apps, :color, :string
  end
end
