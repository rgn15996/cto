class CreateInitiatives < ActiveRecord::Migration
  def change
    create_table :initiatives do |t|
      t.string :name
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    add_index :initiatives, [:user_id, :created_at]
  end
end
