class DressesController < ApplicationController
  def index
    @dresses = Dress.all
    render status: 200, json: @dresses.to_json
  end

end
