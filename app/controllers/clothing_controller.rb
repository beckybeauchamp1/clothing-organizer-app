class ClothingController < ApplicationController
  def index
    @clothing = Clothing.all
    render status: 200, json: @clothing.to_json
  end

  def show
    @clothing = Clothing.find(params[:id])
    @photos = @clothing.photos
    render :json => @clothing.to_json(:include => [:photos])
  end

end
