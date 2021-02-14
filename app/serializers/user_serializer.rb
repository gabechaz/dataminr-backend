class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :ethnicity, :gender_identity, :political_party, :location, :religion, :currency, :username
  has_many :answers
  has_many :questions

  # def answers
  #   Answer.all.select do |answer|
  #     answer.user_id == self.object.id
  #   end
  # end
end

