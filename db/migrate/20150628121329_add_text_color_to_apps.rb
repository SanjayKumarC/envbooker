class AddTextColorToApps < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :text_color, :string
  end
end
