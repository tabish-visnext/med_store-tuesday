class AddForeignKeysToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :price_id, :integer
  end
end
