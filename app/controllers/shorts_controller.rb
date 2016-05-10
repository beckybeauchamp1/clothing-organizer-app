class ShortsController < ApplicationController
  def index
    @shorts = Short.all
    render status: 200, json: @shorts.to_json
  end
end
