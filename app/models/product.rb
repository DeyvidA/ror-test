class Product < ApplicationRecord
    # belongs_to :brand
    # has_many :categories
    belongs_to :brand
    belongs_to :category
end
