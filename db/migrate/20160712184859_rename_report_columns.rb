class RenameReportColumns < ActiveRecord::Migration
  def change
    rename_column :reports, :comment_id_id, :comment_id
    rename_column :reports, :occurrence_id_id, :occurrence_id
  end
end
