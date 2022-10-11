class SupplierCertificationSerializer < ActiveModel::Serializer
  attributes :id, :supplier_certification_name
  has_many :products
end
