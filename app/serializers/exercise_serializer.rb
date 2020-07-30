class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id

  has_many :exercises_lifts
  has_many :lifts, through: :exercises_lifts, serializer: LiftSerializer
  # has_many :setts, through: :lifts
end
