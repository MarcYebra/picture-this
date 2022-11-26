
class Api::V1::ReviewsController < ApiController
  before_action :authenticate_user, only: [:create]
  skip_before_action :verify_authenticity_token


  def create
    photographer = Photographer.find(params[:photographer_id])
    
    review = Review.new(review_params)
    review.photographer = photographer
    review.user = current_user
    if review.save
      render json: review
    else
      render json: {errors: review.errors.full_messages.to_sentence}
    end
  end

  def destroy
    review  = Review.find(params[“id”])
    if(verify_access(review))
      review.destroy
      render json: Review.all
    else
      render status: 401
    end
  end

  def edit 
    review = Review.find(params[:id])
    render :edit 
  end

  private

  def review_params
    params.permit(:title, :body, :rating)
  end

end