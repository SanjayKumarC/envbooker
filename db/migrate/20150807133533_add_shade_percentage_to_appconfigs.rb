class AddShadePercentageToAppconfigs < ActiveRecord::Migration[5.1]
  def change
    add_column :appconfigs, :shade_percentage, :integer, :default => 10
  end
end
