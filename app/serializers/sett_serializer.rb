class SettSerializer < ActiveModel::Serializer
  attributes :id, :lift_id, :reps, :weight, :true_reps, :true_weight

  belongs_to :lift
end
