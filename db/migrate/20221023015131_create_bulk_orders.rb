class CreateBulkOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :bulk_orders do |t|
      t.integer :min_quantity
      t.references :item, null: false, foreign_key: true
      t.float :adjusted_price

      t.timestamps
    end
  end
end
