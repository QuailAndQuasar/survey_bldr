class AddQuestionIdToSurveys < ActiveRecord::Migration[7.1]
  def change
    add_reference :surveys, :question, foreign_key: true
  end
end 