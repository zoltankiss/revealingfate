class RenameTitle < ActiveRecord::Migration
  def change
    rename_column :info_for_readings, :title, :prefix
  end
end
