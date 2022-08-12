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
      redirect_to listing(@listing)
    else
      render :new
    end
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to listing_path(@listing)
  end

  def show
    @listing = Listing.find(params[:id])
  end


  private

  def listing_params
    params.require(:listing).permit(:title, :description, :category, :condtion, :photo)
  end
end
