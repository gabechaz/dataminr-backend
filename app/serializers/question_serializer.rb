class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :reward, :option1, :option2, :answers
  has_many :answers
  has_many :users 

  def option1Stats
    self.answers.map do |answer|
      answer.response === 'option1'
    end
  end

  def option2stats
  end

end

