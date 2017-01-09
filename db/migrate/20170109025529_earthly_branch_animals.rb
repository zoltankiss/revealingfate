class EarthlyBranchAnimals < ActiveRecord::Migration
  def change
    add_column :readings, :earthly_branch_animal_hour, :string
    add_column :readings, :earthly_branch_animal_day, :string
    add_column :readings, :earthly_branch_animal_month, :string
    add_column :readings, :earthly_branch_animal_year, :string
  end
end
