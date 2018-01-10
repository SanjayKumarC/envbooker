class AddNotesToEnvironment < ActiveRecord::Migration[5.1]
  def change
    add_column :envs, :notes, :string
  end
end
