class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def new
    @album = Album.new
  end

  def show
    @album = Album.find(params[:id])
  end

  def create
  	@album = Album.new(params[:Album])
  	if @album.save
  		redirect_to Albums_path
  	else
  		render :new
  	end
  end

  def edit
  	@album = Album.find(params[:id])
  end

  
  def update
  	@album = Album.find(params[:id])
  	if @album.update_attributes(params[:Album])
  		redirect_to Albums_path
  	else
  		render :edit
  	end
  end

  def destroy
  	@album = Album.find(params[:id])
		if @album.destroy
			redirect_to Albums_path
		end
	end

  def show
  	@album = Album.find(params[:id])
  end
end

