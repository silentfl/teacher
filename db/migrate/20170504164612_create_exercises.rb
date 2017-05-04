class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.belongs_to :task
      t.belongs_to :user
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
