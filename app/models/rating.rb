class Rating < ActiveRecord::Base
  attr_accessible :rated_id, :score

  belongs_to :rater, class_name: "User"
  belongs_to :rated, class_name: "InnovationIdea"

  validates :rater_id, presence: true
  validates :rated_id, presence: true
end
