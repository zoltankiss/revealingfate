class EarthlyBranchRoles < ActiveRecord::Migration
  def change
    add_column :readings, :earthly_branch_roles_hour, :string
    add_column :readings, :earthly_branch_roles_day, :string
    add_column :readings, :earthly_branch_roles_month, :string
    add_column :readings, :earthly_branch_roles_year, :string
  end
end
