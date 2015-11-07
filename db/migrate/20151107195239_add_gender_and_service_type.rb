class AddGenderAndServiceType < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :gender, :string
    add_column :info_for_readings, :service_type, :string
  end
end
