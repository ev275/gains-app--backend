# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Exercise.destroy_all
ExercisesLift.destroy_all
Lift.destroy_all
Sett.destroy_all

enrique = User.create(name: "Enrique", username: "enrique123", sex: "male", age: 19, weight: 187, height: 73)

legs1 = Exercise.create(name: "leg_day_1", user_id: enrique.id)
chest_back1 = Exercise.create(name: "chest_back_1", user_id: enrique.id)
arms1 = Exercise.create(name: "arms_1", user_id: enrique.id)
legs2 = Exercise.create(name: "leg_day_2", user_id: enrique.id)
chest_back2 = Exercise.create(name: "chest_back_2", user_id: enrique.id)
arms2 = Exercise.create(name: "arms_2", user_id: enrique.id)

squat = Lift.create(name: "barbell_squat")
leg_press = Lift.create(name: "leg_press")
legs1.lifts << squat
legs1.lifts << leg_press
legs2.lifts << squat
legs2.lifts << leg_press

bench = Lift.create(name: "benchpress")
pull = Lift.create(name: "incline_pull")
chest_back1.lifts << bench
chest_back1.lifts << pull
chest_back2.lifts << bench
chest_back2.lifts << pull

squat_set1 = Sett.create(lift_id: squat.id, reps: 8, weight: 225, true_reps: 8, true_weight: 225)
squat_set2 = Sett.create(lift_id: squat.id, reps: 6, weight: 275, true_reps: 6, true_weight: 275)
squat_set3 = Sett.create(lift_id: squat.id, reps: 6, weight: 285, true_reps: 6, true_weight: 285)
squat_set4 = Sett.create(lift_id: squat.id, reps: 4, weight: 305, true_reps: 4, true_weight: 305)
squat_set5 = Sett.create(lift_id: squat.id, reps: 2, weight: 315, true_reps: 2, true_weight: 315)


# Exercise.all.each { |exercise| exercise.user = enrique }
