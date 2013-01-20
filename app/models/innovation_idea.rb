class InnovationIdea < ActiveRecord::Base
  attr_accessible :description, :title

  belongs_to :user

  validates :title, presence: true, length: {maximum: 128}
  validates :description, presence: true

end
