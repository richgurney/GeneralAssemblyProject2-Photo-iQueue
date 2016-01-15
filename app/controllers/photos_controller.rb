class PhotosController < ApplicationController
	before_action :authenticate_user!
	before_action :set_photo, only: [:show, :edit, :update, :destroy]

	def index
		# get all the photos from the current user
		@photos = current_user.photos
		# get all the photos that are publuc and private
		@publics = Photo.where(:public => 'true')
		@privates = Photo.where(:public => 'false')
	end

	def show
		# Google map, uses the locaation param to use as the location
		# Then pick first and second element in array for latitude and longitude
		@photo = Photo.find(params[:id])
		@coordinates = Geocoder.coordinates(@photo.location)
		gon.lat = @coordinates[0]
		gon.lon = @coordinates[1]
		gon.test = 'testing my google maps'
	end

	def new
		# Create a new photo
		@photo = Photo.new
	end 

	def edit
	end

	def create
	  @photo = Photo.new(photo_params)
	  
	  respond_to do |format|
	    if @photo.save
	      format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
	      format.json { render :show, status: :created, location: @photo }
	    else
	      format.html { render :new }
	      format.json { render json: @photo.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def update
	  respond_to do |format|
	    if @photo.update(photo_params)
	      format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
	      format.json { render :show, status: :ok, photo: @photo }
	    else
	      format.html { render :edit }
	      format.json { render json: @photo.errors, status: :unprocessable_entity }
	    end
	  end
	end

	def destroy
	  @photo.destroy
	  respond_to do |format|
	    format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
	    format.json { head :no_content }
	  end
	end

private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:name, :desc, :location, :tech, :public, :album_id, :upload_image)
    end
end


