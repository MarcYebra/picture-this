class Api::V1::PhotographersController < ApplicationController 

  def index
    render json: Photographer.all
  end

  def show
    render json: Photographer.all
end

end