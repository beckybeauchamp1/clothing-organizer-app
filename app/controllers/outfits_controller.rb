class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
    render status: 200, json: @outfits.to_json
  end

  def show
    @outfit = Outfit.find(params[:id])
    puts @outfit
    render status: 200, json: @outfit.to_json
  end
end
