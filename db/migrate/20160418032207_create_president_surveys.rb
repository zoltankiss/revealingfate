class CreatePresidentSurveys < ActiveRecord::Migration
  def change
    create_table :president_surveys do |t|
      t.column :choice, :string
      t.timestamps null: false
    end
  end
end
