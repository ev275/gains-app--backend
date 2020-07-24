class LiftSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :setts, serializer: SettSerializer
end
