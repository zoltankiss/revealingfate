class AddCelestialStemsToReading < ActiveRecord::Migration
  def change
    add_column :readings, :hour_celestial_stem, :integer
    add_column :readings, :day_celestial_stem, :integer
    add_column :readings, :month_celestial_stem, :integer
    add_column :readings, :year_celestial_stem, :integer
  end
end
