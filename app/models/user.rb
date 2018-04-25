class User < ApplicationRecord
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_many :lists
  has_many :items, through: :lists
end
