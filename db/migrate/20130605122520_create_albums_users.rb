class CreateAlbumsUsers < ActiveRecord::Migration
  def change


  create_table :albums_users, :id => false do |t|
  t.references :album, :null => false
  t.references :user, :null => false
end

# Adding the index can massively speed up join tables. Don't use the
# unique if you allow duplicates.
add_index(:albums_users, [:album_id, :user_id], :unique => true)
  end
end