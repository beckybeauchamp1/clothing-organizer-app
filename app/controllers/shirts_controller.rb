class ShirtsController < ApplicationController
  def index
    @shirts = Shirt.all
    render status: 200, json: @shirts.to_json
  end
end
