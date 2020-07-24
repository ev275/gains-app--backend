class Api::ExercisesController < ApplicationController
    def create
        # byebug
        new_exercise = Exercise.create(exercise_params)

        render json: new_exercise
    end

    def show
        exercise = Exercise.find(params[:id])
        
        render json: exercise, serializer: ExerciseSerializer
    end

    private
    def exercise_params
        params.require(:exercise).permit(:name, :user_id)
    end
end
