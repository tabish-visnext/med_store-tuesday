class CreateSupplierCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :supplier_certifications do |t|
      t.string :supplier_certification_name

      
    end
  end
end
