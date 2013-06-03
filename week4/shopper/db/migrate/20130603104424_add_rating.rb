class AddRating < ActiveRecord::Migration
  def change
  	add_column :products, :rating, :integer
  end
end
