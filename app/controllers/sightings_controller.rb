class SightingsController < ApplicationController
  def index
    sighting = Sighting.all
    render json: Sighting.new(sighting).to_serialized_json
  end
  
  def show
    sighting = Sighting.find(params[:id])
    render json: Sighting.new(sighting).to_serialized_json
  end
end
