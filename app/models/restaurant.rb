class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid size" }

  has_many :reviews, dependent: :destroy
end
