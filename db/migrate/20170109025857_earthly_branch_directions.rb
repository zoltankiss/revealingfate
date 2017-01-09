class EarthlyBranchDirections < ActiveRecord::Migration
  def change
    add_column :readings, :earthly_branch_direction_hour, :string
    add_column :readings, :earthly_branch_direction_day, :string
    add_column :readings, :earthly_branch_direction_month, :string
    add_column :readings, :earthly_branch_direction_year, :string
  end
end
