class RenameNameColumnToTrains < ActiveRecord::Migration
  def change
    rename_column :trains, :name, :title
  end
end
