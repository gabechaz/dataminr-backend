class UsersSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :ethnicity, :gender_identity, :political_party, :location, :religion, :currency, :username, :password
  has_many :answers
  has_many :questions
end

