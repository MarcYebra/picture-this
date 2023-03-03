class QuestionSerializer < ActiveModel::Serializer 
  attributes :id, :question, :created_at

  def created_at
    object.created_at.strftime("%b %d %Y")
  end

end