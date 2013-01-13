class Initiative < ActiveRecord::Base
  attr_accessible :description, :name
  belongs_to :user
  validates :user_id, presence: true
  validates :name, presence: true
  validates :description, presence: true
  default_scope order: 'initiatives.created_at DESC'
end
