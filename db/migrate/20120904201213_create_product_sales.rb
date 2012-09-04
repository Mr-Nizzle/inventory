class CreateProductSales < ActiveRecord::Migration
  def change
    create_table :product_sales do |t|
      t.references :sale
      t.references :product
      t.integer :qty

      t.timestamps
    end
    add_index :product_sales, :sale_id
    add_index :product_sales, :product_id
  end
end
