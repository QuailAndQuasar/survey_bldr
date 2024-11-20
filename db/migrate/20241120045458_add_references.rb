class AddReferences < ActiveRecord::Migration[7.1]
  def change
    change_table :surveys do |t|
      add_reference :surveys, :topic, null: false, foreign_key: true
      add_reference :surveys, :customer, null: false, foreign_key: true
    end
    change_table :questions do |t|
      add_reference :questions, :topic, null: false, foreign_key: true
      add_reference :questions, :survey, null: true, foreign_key: true
    end
    change_table :options do |t|
      add_reference :options, :question, null: false, foreign_key: true
    end
  end
end
