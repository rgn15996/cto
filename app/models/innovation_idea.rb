class InnovationIdea < ActiveRecord::Base
  attr_accessible :description, :title

  validates :title, presence: true, length: {maximum: 128}
  validates :description, presence: true
  
end
