class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.references :salesman

      t.timestamps
    end
    add_index :sales, :salesman_id
  end
end
