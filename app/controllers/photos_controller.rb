class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render status: 200, json: @photos.to_json
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.create!(photo_params)
    redirect_to "/"
  end

  private

  def photo_params
    params.require(:photo).permit(:image, :description)
  end

end
