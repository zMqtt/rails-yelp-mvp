# This is the Restaurant Model
class Restaurant < ApplicationRecord
  has_many :review
  validates :name, :address, :phone_number, :category, presence: true
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :categories, inclusion: { in: categories, message: "#{value} is not a valid category" }
end
