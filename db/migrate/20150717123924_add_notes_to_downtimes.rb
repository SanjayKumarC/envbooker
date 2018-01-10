class AddNotesToDowntimes < ActiveRecord::Migration[5.1]
  def change
    add_column :downtimes, :notes, :string
  end
end
