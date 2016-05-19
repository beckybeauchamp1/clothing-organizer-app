class ClothingController < ApplicationController
  def index
    @random = Clothing.first
    render status: 200, json: @clothing.to_json
  end

end
