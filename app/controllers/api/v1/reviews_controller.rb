
class Api::V1::ReviewsController < ApiController
  before_action :authenticate_user, only: [ :show, :create, :edit, :update, :destroy ]
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
    review = Review.find(params["id"])

    if current_user.id == review.user_id
      review.destroy 
      render json: {reviews: Review.all, message: "Review deleted!"}
    else
      render json: { error: review.errors.full_messages }
    end
  end

  private

  def review_params
    params.permit(:title, :body, :rating)
  end

end