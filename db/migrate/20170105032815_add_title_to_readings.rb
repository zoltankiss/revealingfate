class AddTitleToReadings < ActiveRecord::Migration
  def change
    add_column :readings, :title, :string
  end
end
