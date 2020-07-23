class Api::LiftsController < ApplicationController
    def create
        byebug
        new_lift = Lift.create(lift_params)
        exercise = Exercise.find(params[:exercise_id])
        exercise.lifts << new_lift

        render json: new_lift
    end



    private

    def lift_params
        params.require(:lift).permit(:name)
    end
end
