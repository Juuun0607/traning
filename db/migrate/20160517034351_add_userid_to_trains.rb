class AddUseridToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :user_id, :integer
  end
end
