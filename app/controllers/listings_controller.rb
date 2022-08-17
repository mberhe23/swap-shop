class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user = current_user
    @listing.save
    if @listing.save
      redirect_to listings_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show
  end


  private

  def listing_params
    params.require(:listing).permit(:title, :description, :category, :condtion, :photo)
  end
end
