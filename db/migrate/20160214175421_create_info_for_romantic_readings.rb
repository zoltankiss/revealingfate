class CreateInfoForRomanticReadings < ActiveRecord::Migration
  def change
    create_table :info_for_romantic_readings do |t|
      t.string :name1
      t.string :name2
      t.string :email1
      t.string :email2
      t.string :gender1
      t.string :gender2
      t.string :personalized_question
      t.datetime :birth_date1
      t.datetime :birth_date2

      t.timestamps null: false
    end
  end
end
