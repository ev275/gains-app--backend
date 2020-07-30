class Api::LiftsController < ApplicationController
    def create
        new_lift = Lift.create(lift_params)
            reps_array = params[:reps].split(", ").map {|str| str.to_i}
            weights_array = params[:weights].split(", ").map {|str| str.to_i}

            z = 0
            while z < reps_array.size do
                current_rep = reps_array[z]
                e = 0
                while e < weights_array.size do
                    current_weight = weights_array[e]
                    # byebug
                    if z == e
                        Sett.create(lift_id: new_lift.id, reps: current_rep, weight: current_weight)
                    end
                    e += 1
                end
                z += 1
            end
        exercise = Exercise.find(params[:exercise_id])
        exercise.lifts << new_lift
        # byebug
        render json: new_lift
    end

    def update
        # byebug
        lift = Lift.find(params[:id])
        lift.update(lift_params)
            reps_array = params[:reps].split(", ").map {|str| str.to_i}
            weights_array = params[:weights].split(", ").map {|str| str.to_i}

            lift.setts.destroy_all
            z = 0
            while z < reps_array.size do
                current_rep = reps_array[z]
                e = 0
                while e < weights_array.size do
                    current_weight = weights_array[e]
                    # byebug
                    if z == e
                        Sett.create(lift_id: lift.id, reps: current_rep, weight: current_weight)
                    end
                    e += 1
                end
                z += 1
            end

        render json: lift
    end
    private

    def lift_params
        params.require(:lift).permit(:name)
    end
end
