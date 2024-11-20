class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :text
      t.string :topic
      t.integer :sort_index

      t.timestamps
    end
  end
end
