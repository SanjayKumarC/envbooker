class AddShadePercentageToAppconfigs < ActiveRecord::Migration
  def change
    add_column :appconfigs, :shade_percentage, :integer, :default => 10
  end
end
