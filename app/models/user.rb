class User < ApplicationRecord
    has_many :exercises
    has_many :exercises_lifts, through: :exercises
    has_many :lifts, through: :exercises_lifts
    has_many :setts, through: :lifts

    def authenticate(password)
        self.password == password
    end
end
