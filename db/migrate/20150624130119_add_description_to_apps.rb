class AddDescriptionToApps < ActiveRecord::Migration[5.1]
  def change
    add_column :apps, :description, :string
  end
end
