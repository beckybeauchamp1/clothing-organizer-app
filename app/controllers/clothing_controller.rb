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

  def update
    @clothing = Clothing.find(params[:id])
    puts @clothing
    puts params[:times_worn]
    puts params[:id]
    @clothing.update!(clothing_params)
    render :json => @clothing.to_json(:include => [:photos])
  end

  private

  def clothing_params
    params.require(:clothing).permit(:description, :title, :type, :size, :length, :material, :height, :color, :cost, :sleeve_type, :times_worn)
  end


end
