class RemoveTimeFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :time, :datetime
  end
end
