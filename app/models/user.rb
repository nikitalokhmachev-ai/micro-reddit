class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
  validates :email, presence: true, length: { maximum: 255, minimum: 3 }
  validates :is_banned, inclusion: { in: [true, false] }
  validates :age, presence: true
end
