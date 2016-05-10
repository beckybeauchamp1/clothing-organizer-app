class SkirtsController < ApplicationController
  def index
    @skirts = Skirt.all
    render status: 200, json: @skirts.to_json
  end
end
