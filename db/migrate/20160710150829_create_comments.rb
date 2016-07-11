class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      t.integer :occurrence_id
      t.datetime :time

      t.timestamps null: false
    end
  end
end
