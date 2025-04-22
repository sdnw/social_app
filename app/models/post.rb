class Post < ApplicationRecord
  belongs_to :user
  validates :text, presence: true
  has_many :likes, dependent: :destroy

  attribute :likes, :integer, default: 0
end
