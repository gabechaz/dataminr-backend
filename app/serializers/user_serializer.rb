class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :ethnicity, :gender_identity, :political_party, :location, :religion, :wallet, :username
  has_many :questions
  # has_many :answers
  


end

