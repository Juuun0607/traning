class AddSomeColumnsToTrains < ActiveRecord::Migration
  def change
    add_column :trains, :link1, :text
    add_column :trains, :link2, :text
    add_column :trains, :link3, :text
  end
end
