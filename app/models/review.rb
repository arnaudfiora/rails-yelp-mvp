class Review < ApplicationRecord
  belongs_to :restaurant

  # VALIDATIONS
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: {
    in: (0..5),
    message: 'Please enter a rating between 0 and 5'
  }
end
