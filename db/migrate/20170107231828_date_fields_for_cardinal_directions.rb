class DateFieldsForCardinalDirections < ActiveRecord::Migration
  def change
    add_column :readings, :hour_cardinal_direction, :string
    add_column :readings, :day_cardinal_direction, :string
    add_column :readings, :month_cardinal_direction, :string
    add_column :readings, :year_cardinal_direction, :string
  end
end
