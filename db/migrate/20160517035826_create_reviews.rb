class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :rate
      t.text :review
      t.belongs_to :train
      t.belongs_to :user

      t.timestamps
    end
  end
end
