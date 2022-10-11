class CreateProductCertifications < ActiveRecord::Migration[7.0]
  def change
    create_table :product_certifications do |t|
      t.string :product_certification_name
      t.timestamps
    end
  end
end
