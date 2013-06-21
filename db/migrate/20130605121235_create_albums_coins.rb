class CreateAlbumsCoins < ActiveRecord::Migration
  def change


  create_table :albums_coins, :id => false do |t|
  t.references :album, :null => false
  t.references :coin, :null => false
end

# Adding the index can massively speed up join tables. Don't use the
# unique if you allow duplicates.
add_index(:albums_coins, [:album_id, :coin_id], :unique => true)
  	
  end
end
