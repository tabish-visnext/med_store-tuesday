class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :model
      t.string :brand
      t.string :sold_by
      t.string :price
      t.integer :quantity
      t.string :category
      t.string :certification
      t.string :supplier_certification
      t.string :supplier_country

      t.timestamps
    end
  end
end
