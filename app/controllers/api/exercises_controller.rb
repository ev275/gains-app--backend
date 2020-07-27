class Api::ExercisesController < ApplicationController
    def create
        # byebug
        new_exercise = Exercise.create(exercise_params)

        render json: new_exercise
    end

    def show
        exercise = Exercise.find(params[:id])
        render json: {name: exercise.name, lifts: exercise.lifts}, include: :setts
        # returns lifts and sets for this exercise
    end

    def index
        exercises = Exercise.all
        # exercises.map do |exercise|
        #     {id: exercise.id, name: exercise.name, lifts: exercise.lifts.map {|lift| {id: lift.id, name: lift.name, setts: lift.setts}}}
        # end
        render json: exercises, include: 'lifts.setts'
    end

    def update
        exercise = Exercise.find(params[:id])
        exercise.update(exercise_params)

        render json: {name: exercise.name, lifts: exercise.lifts}, include: :setts
    end

    def destroy
        exercise = Exercise.find(params[:id])
        exercise.destroy
    end

    private
    def exercise_params
        params.require(:exercise).permit(:name, :user_id)
    end
end
