class Api::ExercisesController < ApplicationController
    def create
        # byebug
        name = params[:name]
        new_exercise = Exercise.create(name: name, user_id: @user.id)

        render json: new_exercise
    end

    def show
        exercise = Exercise.find(params[:id])
        render json: {id: exercise.id, name: exercise.name, lifts: exercise.lifts}, include: :setts
        # returns lifts and sets for this exercise
    end

    def index
        # byebug
        exercises = @user.exercises
        # exercises.map do |exercise|
        #     {id: exercise.id, name: exercise.name, lifts: exercise.lifts.map {|lift| {id: lift.id, name: lift.name, setts: lift.setts}}}
        # end
        render json: exercises, include: 'lifts.setts'
    end

    def update
        exercise = Exercise.find(params[:id])
        exercise.update(exercise_params)

        render json: {id: exercise.id, name: exercise.name, lifts: exercise.lifts}, include: :setts
    end

    def destroy
        # byebug
        Exercise.destroy(params[:id])
        # exercise.destroy
    end

    private
    def exercise_params
        params.require(:exercise).permit(:name, :user_id)
    end
end
