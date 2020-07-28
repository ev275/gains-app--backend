# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# User.destroy_all
# Exercise.destroy_all
# ExercisesLift.destroy_all
# Lift.destroy_all
# Sett.destroy_all

enrique = User.create(name: "Enrique", username: "enrique123", password: "password", sex: "male", age: 19, weight: 187, height: 73)

legs1 = Exercise.create(name: "Leg Day", user_id: enrique.id)
chest_back1 = Exercise.create(name: "Chest & Back", user_id: enrique.id)
arms1 = Exercise.create(name: "Arms", user_id: enrique.id)
# legs2 = Exercise.create(name: "leg_day_2", user_id: enrique.id)
# chest_back2 = Exercise.create(name: "chest_back_2", user_id: enrique.id)
# arms2 = Exercise.create(name: "arms_2", user_id: enrique.id)

squat = Lift.create(name: "barbell squat")
leg_press = Lift.create(name: "leg press")
legs1.lifts << squat
legs1.lifts << leg_press
# legs2.lifts << squat
# legs2.lifts << leg_press

bench = Lift.create(name: "benchpress")
pull = Lift.create(name: "incline pull")
chest_back1.lifts << bench
chest_back1.lifts << pull
# chest_back2.lifts << bench
# chest_back2.lifts << pull

curl = Lift.create(name: "hammer curls")
skull_crushers = Lift.create(name: "dumbell skull crushers")
arms1.lifts << curl
# arms2.lifts << curl
arms1.lifts << skull_crushers
# arms2.lifts << skull_crushers

squat_set1 = Sett.create(lift_id: squat.id, reps: 8, weight: 225, true_reps: 8, true_weight: 225)
squat_set2 = Sett.create(lift_id: squat.id, reps: 6, weight: 275, true_reps: 6, true_weight: 275)
squat_set3 = Sett.create(lift_id: squat.id, reps: 6, weight: 285, true_reps: 6, true_weight: 285)
squat_set4 = Sett.create(lift_id: squat.id, reps: 4, weight: 305, true_reps: 4, true_weight: 305)
squat_set5 = Sett.create(lift_id: squat.id, reps: 2, weight: 315, true_reps: 2, true_weight: 315)

leg_press_set1 = Sett.create(lift_id: leg_press.id, reps: 8, weight: 410)
leg_press_set2 = Sett.create(lift_id: leg_press.id, reps: 6, weight: 430)
leg_press_set3 = Sett.create(lift_id: leg_press.id, reps: 6, weight: 430)
leg_press_set4 = Sett.create(lift_id: leg_press.id, reps: 4, weight: 450)

bench_press_set1 = Sett.create(lift_id: bench.id, reps: 10, weight: 185)
bench_press_set2 = Sett.create(lift_id: bench.id, reps: 6, weight: 205)
bench_press_set3 = Sett.create(lift_id: bench.id, reps: 4, weight: 225)
bench_press_set4 = Sett.create(lift_id: bench.id, reps: 2, weight: 235)

pull_set1 = Sett.create(lift_id: pull.id, reps: 10, weight: 100)
pull_set2 = Sett.create(lift_id: pull.id, reps: 10, weight: 100)
pull_set3 = Sett.create(lift_id: pull.id, reps: 8, weight: 115)
pull_set4 = Sett.create(lift_id: pull.id, reps: 8, weight: 115)

curl_set1 = Sett.create(lift_id: curl.id, reps: 7, weight: 45)
curl_set2 = Sett.create(lift_id: curl.id, reps: 7, weight: 45)
curl_set3 = Sett.create(lift_id: curl.id, reps: 7, weight: 45)
curl_set4 = Sett.create(lift_id: curl.id, reps: 7, weight: 45)

skull_crushers_set1 = Sett.create(lift_id: skull_crushers.id, reps: 10, weight: 30)
skull_crushers_set2 = Sett.create(lift_id: skull_crushers.id, reps: 10, weight: 30)
skull_crushers_set3 = Sett.create(lift_id: skull_crushers.id, reps: 10, weight: 30)
skull_crushers_set4 = Sett.create(lift_id: skull_crushers.id, reps: 10, weight: 30)






# Exercise.all.each { |exercise| exercise.user = enrique }
