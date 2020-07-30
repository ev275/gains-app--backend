class Exercise < ApplicationRecord
    belongs_to :user
    has_many :exercises_lifts
    has_many :lifts, through: :exercises_lifts
    has_many :setts, through: :lifts
end
