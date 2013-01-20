class AddUserIdToInnovationIdeas < ActiveRecord::Migration
  def change
    add_column :innovation_ideas, :user_id, :integer
  end
end
