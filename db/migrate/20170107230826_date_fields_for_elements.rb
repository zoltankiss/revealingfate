class DateFieldsForElements < ActiveRecord::Migration
  def change
    add_column :readings, :hour_element, :string
    add_column :readings, :day_element, :string
    add_column :readings, :month_element, :string
    add_column :readings, :year_element, :string
  end
end
