class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rater_id
      t.integer :rated_id
      t.integer :score

      t.timestamps
    end

    add_index :ratings, :rater_id
    add_index :ratings, :rated_id
    add_index :ratings, [:rater_id, :rated_id], unique: true
  end
end
