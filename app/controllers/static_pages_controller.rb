class StaticPagesController < ApplicationController
  
  def index 
    render json: Photographer.all 
  end

end