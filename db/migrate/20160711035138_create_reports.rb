class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.text :text
      t.references :occurrence_id, index: true, foreign_key: true
      t.references :comment_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
