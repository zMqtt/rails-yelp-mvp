# This is the Restaurant Model
class Restaurant < ApplicationRecord
  has_many :reviews
  validates :name, :address, :phone_number, :category, presence: true
  categories = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: categories, message: ' `%{value}` is not a valid category' }
end
