class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
    render status: 200, json: @outfits.to_json
    # @outfit_top = Clothing.find(@outfit.clothing_top_id)
    # @outfit_bottom = Clothing.find(@outfit.clothing_bottom_id)
    # format.json {
    #   render :json => {
    #     :outfits => @outfits,
    #     :outfit_top => @outfit_top,
    #     :outfit_bottom => @outfit_bottom
    #   }
    # }
  end

  def show
    @outfit = Outfit.find(params[:id])
    @outfit_top = Clothing.find(@outfit.clothing_top_id)
    @outfit_bottom = Clothing.find(@outfit.clothing_bottom_id)
    render :json => {
      :outfit => @outfit,
      :outfit_top => @outfit_top,
      :outfit_bottom => @outfit_bottom
    }
  end

end
