class Product < ApplicationRecord
    validates :name_product, presence: true 
    validates :description, presence: true 
    validates :price, presence: true 
end
