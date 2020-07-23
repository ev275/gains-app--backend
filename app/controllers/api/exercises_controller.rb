class Api::ExercisesController < ApplicationController
    def create
        # byebug
        new_exercise = Exercise.create(exercise_params)

        render json: new_exercise
    end


    private
    def exercise_params
        params.require(:exercise).permit(:name, :user_id)
    end
end
