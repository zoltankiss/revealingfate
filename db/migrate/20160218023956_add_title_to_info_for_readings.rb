class AddTitleToInfoForReadings < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :title, :string
  end
end
