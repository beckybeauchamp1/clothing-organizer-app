class ClothingController < ApplicationController
  def index
    @clothing = Clothing.all
    render status: 200, json: @clothing.to_json
  end
end
