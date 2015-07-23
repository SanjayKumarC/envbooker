class AddNotesToEnvbookings < ActiveRecord::Migration
  def change
    add_column :envbookings, :notes, :string
  end
end
