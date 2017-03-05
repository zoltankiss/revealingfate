class Seasons < ActiveRecord::Migration
  def change
    add_column :readings, :hour_season, :string
    add_column :readings, :day_season, :string
    add_column :readings, :month_season, :string
    add_column :readings, :year_season, :string
  end
end
