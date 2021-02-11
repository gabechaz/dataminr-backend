class QuestionsSerializer < ActiveModel::Serializer
  attributes :id, :question, :reward, :option1, :option2
  has_many :answers
  has_many :users 
end

