class CreatePracticeResults < ActiveRecord::Migration[5.2]
  def change
    create_table :practice_results do |t|
      t.string :name, limit: 30
      t.integer :score, limit: 10, null: false

      t.timestamps
    end
  end
end
