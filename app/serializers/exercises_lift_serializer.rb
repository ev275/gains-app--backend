class ExercisesLiftSerializer < ActiveModel::Serializer
    belongs_to :exercise
    belongs_to :lift
end
  