class AddColorToApp < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :color, :string
  end
end
