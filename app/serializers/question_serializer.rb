class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :reward, :option1, :option2, :option_1_count, :creator, :answer_count


end

