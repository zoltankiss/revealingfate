class EarthlyBranchElements < ActiveRecord::Migration
  def change
    add_column :readings, :earthly_branch_element_hour, :string
    add_column :readings, :earthly_branch_element_day, :string
    add_column :readings, :earthly_branch_element_month, :string
    add_column :readings, :earthly_branch_element_year, :string
  end
end
