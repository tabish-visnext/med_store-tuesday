class AddColumnToPrices < ActiveRecord::Migration[7.0]
  def change
    add_column :prices, :cost, :integer
  end
end
