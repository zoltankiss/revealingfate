class AddSpamFilteringToInfoForReadings < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :is_spam, :boolean, default: false
  end
end
