class Api::V1::PhotosController < ApiController 
  before_action authenticate_user, only: [:show]
  skip_before_action :verify_authenticity_token

  def index 
    photos = Photo.all
    render json: photos
  end

  def show
    photo = Photo.find(params[:id])
    render json: photo 
  end

  def create 
    photo = Photo.new(photo_params)

    if photo.save
      render json: photo
    else
      render json: {error: photo.errors.full_messages }, status: :unproccessable_entity
    end
  end

  def destroy 
    photo = Photo.find(params[:id])
    photo.destroy 
    render json: {}, status: :no_content 
  end

  protected 

  def photo_params
    params.require(:photo).permit(:photo)
  end

  def authorize_user 
    if !user_signed_in? || !(current_user.role == "admin")
      render json: {error: [:"Only admins have access to this feature"]}
    end
  end

  def authenticate_user
    if !user_signed_in?
      render json: {error: ["You need to be signed in first"]}
    end
  end
end
