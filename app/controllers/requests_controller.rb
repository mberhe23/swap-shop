class RequestsController < ApplicationController
  before_action :set_listing, only: %i[new create]

  def create
    @request = Request.new(request_params)
    @request.listing = @listing
    @request.save
    redirect_to listing_path(@listing)
  end

  # add edit and delete, index and show functions for current_user?

 private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def request_params
    params.require(:request)
  end
end
