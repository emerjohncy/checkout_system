class CreateFreeItems < ActiveRecord::Migration[7.0]
  def change
    create_table :free_items do |t|
      t.integer :quantity
      t.references :item, null: false, foreign_key: true
      t.float :discount_price

      t.timestamps
    end
  end
end
