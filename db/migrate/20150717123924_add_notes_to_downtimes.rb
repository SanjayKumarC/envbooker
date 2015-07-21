class AddNotesToDowntimes < ActiveRecord::Migration
  def change
    add_column :downtimes, :notes, :string
  end
end
