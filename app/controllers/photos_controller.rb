class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render status: 200, json: @photos.to_json
  end

  def show
    @photo = Photo.find(params[:id])
    render status: 200, json: @photo.to_json
  end

  def new
    @clothing = Clothing.find(params[:clothing_id])
    @photo = Photo.new
  end

  def create
    clothing_type = params[:photo][:clothing_type]
    type = Object.const_get(clothing_type)
    clothing_id = params[:photo][:clothing_id]
    @clothing = type.find(clothing_id)
    @photo = @clothing.photos.create!(photo_params)
    redirect_to "/#/clothes/#{clothing_id}"
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :description)
  end

end
