class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  
  has_many :initiatives
  has_many :innovation_ideas

  has_many :ratings, foreign_key: "rater_id", dependent: :destroy
  
  has_many :rated_ideas, through: :ratings, source: :rated

  has_secure_password

  before_save { self.email.downcase! }
  before_save :create_remember_token

  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: {minimum: 6}
  validates :password_confirmation, presence: true

  def rated_idea?(idea)
    ratings.find_by_rated_id(idea)
  end
  
  def rate_idea!(idea, score)
    if current_rating = ratings.find_by_rated_id(idea)
      # ratings.update_attributes(current_rating, score: score)
      current_rating.score = score
      current_rating.save!
    else
      ratings.create!(rated_id: idea.id, score: score)
    end
  end

  private

  	def create_remember_token
  		self.remember_token = SecureRandom.urlsafe_base64
  	end
end
