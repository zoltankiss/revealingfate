class AddNameToPresidentsSurvey < ActiveRecord::Migration
  def change
    add_column :president_surveys, :name, :string
    PresidentSurvey.update_all name: 'trump'
  end
end
