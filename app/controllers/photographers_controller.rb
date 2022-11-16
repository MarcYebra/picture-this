class PhotographersController < ApplicationController

  def index
    @photographers = Photographer.all
  end

  def show 
    @photographer = Photographer.find(params[:id])
    render :show 
  end
  
end