class CreateUserPreferences < ActiveRecord::Migration
  def change
    create_table :user_preferences do |t|
      t.references :user, index: true, foreign_key: true
      t.string :template
      t.boolean :color_by_project, :default => false
      t.integer :total_hours
      t.boolean :show_extra_color_box, :default => false

      t.timestamps null: false
    end
  end
end
