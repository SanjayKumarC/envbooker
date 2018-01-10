class AddShowExtraColorBoxToAppconfigs < ActiveRecord::Migration[5.1]
  def change
    add_column :appconfigs, :show_extra_color_box, :boolean, :default => false
  end
end
