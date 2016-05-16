class CreateTrains < ActiveRecord::Migration
  def change
    create_table :trains do |t|
        t.string      :name
        t.text        :text
        t.text        :image
        t.timestamps
    end
  end
end
