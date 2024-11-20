class CreateOptions < ActiveRecord::Migration[7.1]
  def change
    create_table :options do |t|
      t.string :text
      t.integer :sort_index

      t.timestamps
    end
  end
end
