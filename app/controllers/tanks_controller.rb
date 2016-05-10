class TanksController < ApplicationController
  def index
    @tanks = Tank.all
    render status: 200, json: @tanks.to_json
  end
end
