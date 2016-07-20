class OutfitsController < ApplicationController

  def index
    @outfits = Outfit.all
    render status: 200, json: @outfits.to_json
  end

  def show
    @outfit = Outfit.find(params[:id])
    @outfit_top = Clothing.find(@outfit.clothing_top_id)
    @outfit_bottom = Clothing.find(@outfit.clothing_bottom_id)


    render :json => {
      :outfit => @outfit,
      :outfit_top => @outfit_top,
      :outfit_top_photo => @outfit_top.photos,
      :outfit_bottom => @outfit_bottom,
      :outfit_bottom_photo => @outfit_bottom.photos
    }
  end

  def update
    puts params[:top_id]
    puts params[:bottom_id]
    puts params[:id]
    @outfit_top_photo = Photo.find(params[:top_id])
    puts params[:top_id]
    puts @outfit_top_photo
    @outfit_bottom_photo = Photo.find(params[:bottom_id])
    photos = {@outfit_top_photo.id => {"x" => params[:top_x], "y" => params[:top_y]}, @outfit_bottom_photo.id => {"x" => params[:bottom_x], "y" => params[:bottom_y]} }
    Photo.update(photos.keys, photos.values)
    # @outfit_bottom_photo.update({x: params[:bottom_x, y: params[:bottom_y]]})

    @outfit = Outfit.find(params[:id])
    @outfit_top = Clothing.find(@outfit.clothing_top_id)
    @outfit_bottom = Clothing.find(@outfit.clothing_bottom_id)


    render :json => {
      :outfit => @outfit,
      :outfit_top => @outfit_top,
      :outfit_top_photo => @outfit_top.photos,
      :outfit_bottom => @outfit_bottom,
      :outfit_bottom_photo => @outfit_bottom.photos
    }

  end

  def create
    @outfit = Outfit.create!({description: params[:description], clothing_top_id: params[:clothing_top_id], clothing_bottom_id: params[:clothing_bottom_id] })
    @outfits = Outfit.all
    render status: 200, json: @outfit.to_json

  end


end
