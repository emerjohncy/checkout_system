class CreateCheckoutItems < ActiveRecord::Migration[7.0]
  def change
    create_table :checkout_items do |t|
      t.references :item, null: false, foreign_key: true
      t.references :checkout, null: false, foreign_key: true
      t.integer :quantity
      t.float :total
      t.float :unit_price

      t.timestamps
    end
  end
end
