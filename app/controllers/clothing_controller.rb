class ClothingController < ApplicationController
  def index
    @clothing = Clothing.all
    render :json => @clothing.to_json(:include => [:photos])
  end

  def show
    @clothing = Clothing.find(params[:id])
    @photos = @clothing.photos
    render :json => @clothing.to_json(:include => [:photos])
  end

end
