class CreateExercisesLifts < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises_lifts do |t|
      t.integer :exercise_id
      t.integer :lift_id

      t.timestamps
    end
  end
end
