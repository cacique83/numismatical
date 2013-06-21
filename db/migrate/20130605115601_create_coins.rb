class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.integer :market_value
      t.string :origin
      t.references :user
      t.boolean :for_sale
      t.boolean :for_trade
      t.string :image

      t.timestamps
    end
    add_index :coins, :user_id
  end
end
