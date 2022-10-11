class ProductCertificationSerializer < ActiveModel::Serializer
  attributes :id, :product_certification_name
  has_many :products
end
