class AddFinishedToInfoForReading < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :finished, :boolean
  end
end
