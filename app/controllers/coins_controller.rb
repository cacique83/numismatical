class CoinsController < ApplicationController
  def index
    @coins = Coin.all
  end

  def new
    @coin = Coin.new
  end

  def show
    @coin = Coin.find(params[:id])
  end

  def create
  	@coin = Coin.new(params[:coin])
  	if @coin.save
  		redirect_to coins_path
  	else
  		render :new
  	end
  end

  def edit
  	@coin = Coin.find(params[:id])
  end

  
  def update
  	@coin = Coin.find(params[:id])
  	if @coin.update_attributes(params[:coin])
  		redirect_to coins_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@coin = Coin.find(params[:id])
		if @coin.destroy
			redirect_to coins_path
		end
	end

  def show
  	@coin = Coin.find(params[:id])
  end
end