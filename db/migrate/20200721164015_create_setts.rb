class CreateSetts < ActiveRecord::Migration[6.0]
  def change
    create_table :setts do |t|
      t.integer :lift_id
      t.integer :reps
      t.integer :weight
      t.integer :true_reps
      t.integer :true_weight

      t.timestamps
    end
  end
end
