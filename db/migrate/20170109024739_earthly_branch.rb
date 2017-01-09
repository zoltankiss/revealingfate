class EarthlyBranch < ActiveRecord::Migration
  def change
    add_column :readings, :hour_earthly_branch, :string
    add_column :readings, :day_earthly_branch, :string
    add_column :readings, :month_earthly_branch, :string
    add_column :readings, :year_earthly_branch, :string
  end
end
