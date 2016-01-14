class AddUploadImageToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :upload_image, :string
  end
end
