class TeesController < ApplicationController
  def index
    @tees = Tee.all
    render status: 200, json: @tees.to_json
  end
end
