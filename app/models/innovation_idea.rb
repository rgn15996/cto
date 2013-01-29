class InnovationIdea < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user

  has_many :ratings, foreign_key: "rated_id", dependent: :destroy
  has_many :raters, through: :ratings, source: :rater

  validates :title, presence: true, length: {maximum: 128}
  validates :description, presence: true

end
