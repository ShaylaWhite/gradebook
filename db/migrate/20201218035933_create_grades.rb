class CreateGrades < ActiveRecord::Migration[6.0]
  def change
    create_table :grades do |t|
      t.string :name_of_class
      t.string :student_grade
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
