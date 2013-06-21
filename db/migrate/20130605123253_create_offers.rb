class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :coin
      t.integer :offer_price
      t.references :trader
      t.references :trader_coin

      t.timestamps
    end
    add_index :offers, :coin_id
    add_index :offers, :trader_id
    add_index :offers, :trader_coin_id
  end
end
