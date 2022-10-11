class Product < ApplicationRecord
    belongs_to :category
    belongs_to :country
    belongs_to :supplier_certification
    belongs_to :product_certification
    belongs_to :price

end
