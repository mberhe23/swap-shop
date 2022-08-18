class SwapsController < ApplicationController

  def new
    @swap = Swap.new
  end

  def create
    @swap = Swap.new(swap_params)
    @swap.save
    # redirect_to
  end

  # add delete (to cancel the swap and relist both items),
  # show and index functions for current_user?

  private

  def request_params
    params.require(:request)
  end
end
