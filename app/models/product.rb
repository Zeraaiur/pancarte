class Product < ApplicationRecord
  has_many :categories, through: :product_categories
end
