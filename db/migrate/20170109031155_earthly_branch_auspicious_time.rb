class EarthlyBranchAuspiciousTime < ActiveRecord::Migration
  def change
    add_column :readings, :earthly_branch_auspicious_time_hour, :string
    add_column :readings, :earthly_branch_auspicious_time_day, :string
    add_column :readings, :earthly_branch_auspicious_time_month, :string
    add_column :readings, :earthly_branch_auspicious_time_year, :string
  end
end
