class Product < ApplicationRecord
  validates :name, presence: true, length: { maximum: 40, minimum: 3 }
  validates :description, presence: true, length: { maximum: 150, minimum: 3 }
end
