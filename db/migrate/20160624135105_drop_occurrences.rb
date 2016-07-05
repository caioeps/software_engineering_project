class DropOccurrences < ActiveRecord::Migration
  def change
    execute('DROP TABLE occurrences;')
  end
end
