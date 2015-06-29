class AddTextColorToApps < ActiveRecord::Migration
  def change
    add_column :apps, :text_color, :string
  end
end
