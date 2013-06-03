class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price_cents
      t.integer :stock
      t.text :description
      t.string :image

      t.timestamps
    end
  end
end
