class AddReadingIdToInfoForReading < ActiveRecord::Migration
  def change
    add_reference :readings, :info_for_reading, index: true
  end
end
