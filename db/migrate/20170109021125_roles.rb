class Roles < ActiveRecord::Migration
  def change
    add_column :readings, :hour_roles, :string
    add_column :readings, :day_roles, :string
    add_column :readings, :month_roles, :string
    add_column :readings, :year_roles, :string
  end
end
