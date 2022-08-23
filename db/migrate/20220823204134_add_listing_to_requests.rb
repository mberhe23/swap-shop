class AddListingToRequests < ActiveRecord::Migration[6.1]
  def change
    add_reference :requests, :listing
  end
end
