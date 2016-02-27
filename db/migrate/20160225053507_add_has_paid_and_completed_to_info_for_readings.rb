class AddHasPaidAndCompletedToInfoForReadings < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :has_paid, :boolean
    add_column :info_for_readings, :completed, :boolean
  end
end
