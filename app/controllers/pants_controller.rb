class PantsController < ApplicationController
  def index
    @pants = Pant.all
    render status: 200, json: @pants.to_json
  end
end
