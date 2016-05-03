class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|

      t.timestamps null: false

      t.string :significance_of_your_celestial_element_sign
      t.string :significance_of_the_year_pillar
      t.string :significance_of_the_month_pillar
      t.string :significance_of_the_day_pillar
      t.string :significance_of_the_hour_pillar

      t.string :five_phases_analysis
      t.string :nature_and_disposition_analysis
      t.string :shao_kang_jies_four_characters
      t.string :feng_shui_analysis
      t.string :propositions_for_the_day_master

    end
  end
end
