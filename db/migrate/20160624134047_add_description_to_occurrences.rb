class AddDescriptionToOccurrences < ActiveRecord::Migration
  def change
    add_column :occurrences, :description, :text
  end
end
