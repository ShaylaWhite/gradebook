class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :class
      t.string :student_grade
      t.string :student_id

      t.timestamps
    end
  end
end
