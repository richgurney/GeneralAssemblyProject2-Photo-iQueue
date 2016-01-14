class AlbumsController < ApplicationController
	before_action :authenticate_user!
	before_action :set_album, only: [:show, :edit, :update, :destroy]

	def index

		# if the user has no photos redirect
		@albums = current_user.albums
	end

	def show

		# if the user has no photos redirect to new photo
		
	end

	def new
		
		@album = current_user.albums.new
	end

	def edit

		# if the user has no photos redirect to new photo

	end

	def create
		@album = current_user.albums.new(album_params)

		respond_to do |format|
		  if @album.save
		    format.html { redirect_to @album, notice: 'Album was successfully created.' }
		    format.json { render :show, status: :created, location: @album }
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

	def album_params
		params.require(:album).permit(:name, :desc, :user_id)
	end
end
