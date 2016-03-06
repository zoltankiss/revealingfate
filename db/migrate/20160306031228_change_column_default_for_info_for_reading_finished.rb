class ChangeColumnDefaultForInfoForReadingFinished < ActiveRecord::Migration
  def change
    change_column_default(:info_for_readings, :finished, false)
  end
end
