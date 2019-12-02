class V1::AdvertsController < ApplicationController
  def index
    adverts = Advert.all
    if adverts.empty?
      render_error_message("No ads at the moment", 200)
    else
      render json: adverts
    end
  end

  private

  def render_error_message(message, status)
    render json: { error_message: message }, status: status
  end
end
