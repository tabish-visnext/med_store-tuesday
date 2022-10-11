class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :model, :brand, :sold_by
  belongs_to :category
  belongs_to :country
  belongs_to :supplier_certification
  belongs_to :product_certification
  belongs_to :price
end
