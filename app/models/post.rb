class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, length: { maximum: 50, minimum: 3 }
  validates :body, presence: true, length: { maximum: 500, minimum: 3 }
  validates :user_id, presence: true
end
