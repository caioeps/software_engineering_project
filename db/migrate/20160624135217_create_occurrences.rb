class CreateOccurrences < ActiveRecord::Migration
  def change
    create_table :occurrences do |t|
      t.text :description
      t.datetime :time
      t.integer :rating
      t.float :latitude
      t.float :longitude
      t.string :location

      t.timestamps null: false
    end
  end
end
