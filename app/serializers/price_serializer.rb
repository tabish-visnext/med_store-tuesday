class PriceSerializer < ActiveModel::Serializer
  attributes :id, :cost
  has_many :products
end
