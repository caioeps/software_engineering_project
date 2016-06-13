class CreateOccurrences < ActiveRecord::Migration
  def change
    create_table :occurrences do |t|
      t.datetime :hour
      t.string :location
      t.integer :likes
      t.float :latitude
      t.float :longitude
      t.integer :user_id
      t.text :description

      t.timestamps null: false
    end
  end
end
