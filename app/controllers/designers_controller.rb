class DesignersController < ApplicationController
  def index
    @designer= Designer.all
    render :json => @designer.to_json
  end

  def show
    @designer= Designer.find(params[:id])
    render :json => @designer.to_json
  end

end
