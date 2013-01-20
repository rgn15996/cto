class CreateInnovationIdeas < ActiveRecord::Migration
  def change
    create_table :innovation_ideas do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
