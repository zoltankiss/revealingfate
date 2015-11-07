class PersonalizedQuestions < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :personalized_question, :text
  end
end
