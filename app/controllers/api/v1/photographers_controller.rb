class Api::V1::PhotographersController < ApplicationController 
  before_action :authorize_admin, only: [:create]
  
  def index
    render json: Photographer.all
  end

  def create
    photographer = Photographer.new(photographer_params)
    photographer.user = current_user

    if photographer.save
      render json: photographer
    else 
      render json: {errors: photographer.errors.full_messages.to_sentence}
    end
  end

  def show
    render json: Photographer.find(params[:id]), serializer: PhotographerShowSerializer, include: ['reviews.user']
end

private 

def photographer_params
  params.require(:photographer).permit(:first_name, :last_name, :email, :description, :location, :profile_photo)
end

end