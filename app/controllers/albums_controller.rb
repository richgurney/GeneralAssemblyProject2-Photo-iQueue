class AlbumsController < ApplicationController
	# only allows access if you are logged in
	before_action :authenticate_user!
	before_action :set_album, only: [:show, :edit, :update, :destroy]

	def index
		# get all of the current users albums
		@albums = current_user.albums
	end

	def show
	end

	def new
		# create a new album 
		@album = current_user.albums.new
	end

	def edit
	end

	def create
		# create a new album with the current user id
		@album = current_user.albums.new(album_params)

		respond_to do |format|
		  if @album.save
		    format.html { redirect_to new_photo_path, notice: 'Album was successfully created.' }
		  else
		    format.html { render :new }
		    format.json { render json: @album.errors, status: :unprocessable_entity }
		  end
		end
	end

	def update
	  respond_to do |format|
	    if @album.update(album_params)
	      format.html { redirect_to @album, notice: 'Photo was successfully updated.' }
	      format.json { render :show, status: :ok, album: @album }
	    else
	      format.html { render :edit }
	      format.json { render json: @album.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def destroy
		@album.destroy
		respond_to do |format|
		  format.html { redirect_to albums_url, notice: 'Album was successfully deleted.' }
		  format.json { head :no_content }
		end
	end

	private


	def set_album
		@album = Album.find(params[:id])
	end

	# permit only certain perams
	def album_params
		params.require(:album).permit(:name, :desc, :user_id)
	end
end
