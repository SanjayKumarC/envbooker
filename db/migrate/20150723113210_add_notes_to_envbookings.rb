class AddNotesToEnvbookings < ActiveRecord::Migration[5.1]
  def change
    add_column :envbookings, :notes, :string
  end
end
