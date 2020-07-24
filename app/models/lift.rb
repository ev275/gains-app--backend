class Lift < ApplicationRecord
    has_many :exercises_lifts
    has_many :exercises, through: :exercises_lifts
    has_many :setts
end
