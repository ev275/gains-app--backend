class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :sex, :age, :weight, :height

  has_many :exercises
end
