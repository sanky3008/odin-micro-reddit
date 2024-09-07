class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true
  validates :age, presence: true, numericality: { only_integer: true, greater_than: 18 }
end
