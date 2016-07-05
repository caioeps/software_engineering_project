class AddUserIdToOccurrences < ActiveRecord::Migration
  def change
    add_column :occurrences, :user_id, :integer
  end
end
