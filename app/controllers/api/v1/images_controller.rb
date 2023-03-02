class Api::V1::ImagesController < ApplicationController

  def index
    render json: Image.all
  end

end