class MorePersonalizedQuestions < ActiveRecord::Migration
  def change
    add_column :info_for_readings, :personalized_question_0, :string
    add_column :info_for_readings, :personalized_question_1, :string
    add_column :info_for_readings, :personalized_question_2, :string
    add_column :info_for_readings, :personalized_question_3, :string
    add_column :info_for_readings, :personalized_question_4, :string
    remove_column :info_for_readings, :personalized_question
  end
end
