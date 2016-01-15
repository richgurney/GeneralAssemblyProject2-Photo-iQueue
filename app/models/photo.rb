class Photo < ActiveRecord::Base
	mount_uploader :upload_image, UploadImageUploader
	belongs_to :album
	belongs_to :user
end
