class DateFields < ActiveRecord::Migration
  def change
    add_column :readings, :hour, :string
    add_column :readings, :day, :string
    add_column :readings, :month, :string
    add_column :readings, :year, :string
  end
end
