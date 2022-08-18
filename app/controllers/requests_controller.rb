class RequestsController < ApplicationController

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.save
    redirect_to listing_path
  end

  # add edit and delete, index and show functions for current_user?

 private

  def request_params
    params.require(:request)
  end
end
