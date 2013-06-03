class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :order
      t.references :product
      t.integer :quantity

      t.timestamps
    end
    add_index :items, :order_id
    add_index :items, :product_id
  end
end
