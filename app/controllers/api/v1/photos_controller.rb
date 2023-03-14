class Api::V1::PhotosController < ApiController 
  before_action :authenticate_user, only: [:show]
  skip_before_action :verify_authenticity_token

  def index 
    render json: Photo.all 
  end

  def show
    photo = Photo.find(params[:id])
    render json: photo 
  end

  def create 
    photo = Photo.new(photo_params)
    photo.save
    render json: photo
  end

  private

  def photo_params
    params.permit(:photo)
  end

end
