class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    render status: 200, json: @photos.to_json
  end

  def create
    @photo = Photo.new(photo_params)
    puts @photo
    if @photo.save
      render status: 200, json: @photo.to_json
    end
  end

  private

  def photo_params
    params.fetch(:photo, {}).permit(:image, :description, :shirt_id, :pant_id, :tee_id, :skirt_id, :short_id, :dress_id, :tank_id)
  end

end
