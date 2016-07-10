class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.reference :user_id
      t.reference :occurrence_id
      t.datetime :time

      t.timestamps null: false
    end
  end
end
