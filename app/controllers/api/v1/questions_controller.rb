
class Api::V1::QuestionsController < ApiController
  before_action :authenticate_user, only: [ :index, :create ]
  skip_before_action :verify_authenticity_token

  def index
    render json: Question.all 
  end

  def create
    question = Question.new(question_params)
    question.user = current_user
    
    if question.save
      render json: question
    else
      render json: {errors: review.errors.full_messages.to_sentence}
    end
  end

  private

  def question_params
    params.permit(:question)
  end

end