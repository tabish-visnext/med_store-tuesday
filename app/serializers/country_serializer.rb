class CountrySerializer < ActiveModel::Serializer
  attributes :id, :country_name
  has_many :products
end
