class InnovationIdea < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user

  has_many :ratings, foreign_key: "rated_id", dependent: :destroy
  has_many :raters, through: :ratings, source: :rater

  validates :title, presence: true, length: {maximum: 128}
  validates :description, presence: true

  def rcount
    ratings.count
  end

  def ravg
    if ratings.count > 0
      ravg = 0
      ratings.each do |rating|
        ravg += rating.score
      end
      ravg.to_f/ratings.count
    else
      0
    end
  end
end
