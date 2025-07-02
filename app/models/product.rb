class Product < ApplicationRecord
  validates :reference, presence: true, length: { maximum: 20 }
  validates :name, presence: true, length: { maximum: 60 }
  validates :price, numericality: { greater_than: 0 }
end
