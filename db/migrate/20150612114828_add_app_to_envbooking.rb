class AddAppToEnvbooking < ActiveRecord::Migration
  def change
    add_reference :envbookings, :app, index: true
    add_foreign_key :envbookings, :apps
  end
end
