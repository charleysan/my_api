class FlowerOrder < ApplicationRecord
  validates :price, numericality: { greater_than_or_equal_to: 30 }
  validates :name, presence: true

  belongs_to :user
end
