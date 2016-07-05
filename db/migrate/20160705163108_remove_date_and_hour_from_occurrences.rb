class RemoveDateAndHourFromOccurrences < ActiveRecord::Migration
  def change
    remove_column :occurrences, :date, :date
    remove_column :occurrences, :hour, :string
  end
end
