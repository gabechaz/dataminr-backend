class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :question_id, :response
  # belongs_to :question
  # belongs_to :user
end


