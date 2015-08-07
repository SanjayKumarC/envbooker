class AddShadePercentageToUserPrefrences < ActiveRecord::Migration
  def change
    add_column :user_preferences, :shade_percentage, :integer, :default => 10
  end
end
