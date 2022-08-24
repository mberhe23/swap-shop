class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def profile
    @listings = current_user.listings
    @listings = Listing.all
    @requests = current_user.requests
    @requests = Request.all
    # how to access requests on current_user's listing?

  end
end
