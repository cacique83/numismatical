class ItemsController < ApplicationController

	def create 
	   @coins = Coin.find(params[:product_id])


	   @item = cart.items.build(quantity: params[:quantity], coins: @coins)
	   if @item.save
	   	   redirect_to root_path
	   end
	end
end