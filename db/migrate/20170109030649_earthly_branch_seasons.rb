class EarthlyBranchSeasons < ActiveRecord::Migration
  def change
    add_column :readings, :earthly_branch_season_hour, :string
    add_column :readings, :earthly_branch_season_day, :string
    add_column :readings, :earthly_branch_season_month, :string
    add_column :readings, :earthly_branch_season_year, :string
  end
end
