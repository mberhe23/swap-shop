class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @listings = Listing.all.limit(3)
  end

  def profile
    # swaps = current_user.swaps.select { |swap| swap.state == "paid" }
    # @user_swaps = swaps.map { |swap| swap.listing}
    @listings = current_user.listings
    @listings = Listing.all
  end
end
