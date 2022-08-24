class RemovePhotosFromListings < ActiveRecord::Migration[6.1]
  def change
    remove_column :listings, :photos, :string
  end
end
