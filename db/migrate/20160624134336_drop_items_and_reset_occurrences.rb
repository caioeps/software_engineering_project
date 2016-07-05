class DropItemsAndResetOccurrences < ActiveRecord::Migration
  def change
    execute('DROP TABLE items;')
    execute('DROP TABLE occurrences;')
    create_table :occurrences do |t|
      t.text :description
      t.datetime :time
      t.integer :rating
      t.string :location
      t.float :latitude
      t.float :longitude
    end
  end
end
