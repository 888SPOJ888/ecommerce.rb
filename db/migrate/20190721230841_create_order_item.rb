class CreateOrderItem < ActiveRecord::Migration[5.2]
  def change
    create_table :order_items do |t|
      t.references :order, foreign_key: true
      t.references :variation, foreign_key: true
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end