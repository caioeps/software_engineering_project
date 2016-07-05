class AddDateAndHourToOccurrences < ActiveRecord::Migration
  def change
    add_column :occurrences, :date, :date
    add_column :occurrences, :hour, :string
  end
end
