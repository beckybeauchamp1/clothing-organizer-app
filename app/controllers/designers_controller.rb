class DesignersController < ApplicationController
  def index
    @designers= Designer.all
    render :json => @designers.to_json(:include => [:clothing])
  end

  def show
    @designer= Designer.find(params[:id])
    render :json => @designer.to_json(:include => [:clothing])
  end

  def update
    @designer = Designer.find(params[:id])
    @designer = @designer.update!(designer_params)
    render :json => @designer.to_json(:include => [:clothing])
  end

  private

  def designer_params
    params.require(:designer).permit(:id, :name, :website_url, :created_at, :updated_at)
  end

end
