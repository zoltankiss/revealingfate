class CreateInfoForReadings < ActiveRecord::Migration
  def change
    create_table :info_for_readings do |t|
      t.string :name
      t.string :email
      t.datetime :birth_date

      t.timestamps null: false
    end
  end
end
