class AddNotesToEnvironment < ActiveRecord::Migration
  def change
    add_column :envs, :notes, :string
  end
end
