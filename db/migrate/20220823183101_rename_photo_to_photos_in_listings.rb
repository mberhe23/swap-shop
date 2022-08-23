class RenamePhotoToPhotosInListings < ActiveRecord::Migration[6.1]
  def change
    rename_column :listings, :photo, :photos
  end
end
