class Restaurant < ApplicationRecord
  # important line we say that a restaurant has many reviews and
  # that whern we destroy a restaurant we destroy also all the reviews
  # related to this restaurant
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
