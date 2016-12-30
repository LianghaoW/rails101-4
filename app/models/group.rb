class Group < ApplicationRecord
  belongs_to :user
  has_many :posts
  validates :title, presence: true
  has many :members, through: :group_relationships, source: :user
end
