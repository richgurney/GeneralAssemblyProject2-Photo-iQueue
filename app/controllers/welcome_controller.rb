class WelcomeController < ApplicationController
  def public
  	@publics = Photo.where(:public => 'true')
  end

  private
      # Use callbacks to share common setup or constraints between actions.
      def set_photo
        @photo = Photo.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def photo_params
        params.require(:welcome).permit(:name, :desc, :location, :tech, :public, :album_id, :upload_image)
      end
  end

  


