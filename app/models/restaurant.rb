class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # VALIDATIONS
  validates :name, :address, :category, presence: true
  validates :category, inclusion: {
    in: %w(chinese italian japanese french belgian),
    message: "%{value} is not a valid size"
  }
end
