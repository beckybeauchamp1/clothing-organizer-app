class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
    render status: 200, json: @outfits.to_json
  end
end
