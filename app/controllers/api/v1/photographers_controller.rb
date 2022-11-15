class Api::V1::PhotographersController < ApplicationController

  def index
    render json: Photographer.all
  end

end