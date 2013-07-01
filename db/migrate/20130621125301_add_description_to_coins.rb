class AddDescriptionToCoins < ActiveRecord::Migration
  def change
  	add_column :coins, :description, :text
  end
end
